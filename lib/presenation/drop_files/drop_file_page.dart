import 'dart:ui';

import 'package:admin_580_tech/application/bloc/drop_files/bloc/form_upload_file_bloc.dart';
import 'package:admin_580_tech/core/color.dart';
import 'package:admin_580_tech/core/hover.dart';
import 'package:admin_580_tech/core/icons.dart';
import 'package:admin_580_tech/core/responsive.dart';
import 'package:admin_580_tech/core/string.dart';
import 'package:admin_580_tech/core/text.dart';
import 'package:admin_580_tech/core/theme.dart';
import 'package:admin_580_tech/presenation/widget/svg_icon.dart';
import 'package:desktop_drop/desktop_drop.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_excel/excel.dart';
import 'package:flutterx/flutterx.dart';
import 'package:cross_file/cross_file.dart';
import 'package:mime/mime.dart';

class DropFilePage extends StatefulWidget {
  const DropFilePage({Key? key}) : super(key: key);

  @override
  State<DropFilePage> createState() => _DropFilePageState();
}

class _DropFilePageState extends State<DropFilePage> {
  final FormUploadFileBloc _formUploadFileBloc = FormUploadFileBloc();
  List<dynamic> _filesList = [];
  bool isExcelFile = false;
  Uint8List bytes = Uint8List(0);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _formUploadFileBloc,
      child: Column(
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    Strings.dropzone,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  FxBox.h24,
                  GestureDetector(
                    onTap: () async {
                      FilePickerResult? file = await FilePicker.platform
                          .pickFiles(allowMultiple: false);
                      if (file != null) {
                        _pickFile(file.files.first);
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      padding: const EdgeInsets.all(20.0),
                      constraints: BoxConstraints(
                        minHeight: 270.0,
                        maxWidth: MediaQuery.of(context).size.width,
                        minWidth: MediaQuery.of(context).size.width,
                        maxHeight: 270.0,
                      ),
                      child:
                          BlocBuilder<FormUploadFileBloc, FormUploadFileState>(
                        builder: (context, state) {
                          return Stack(
                            alignment: Alignment.center,
                            clipBehavior: Clip.antiAlias,
                            children: [
                              DropTarget(
                                child: SingleChildScrollView(
                                  controller: ScrollController(),
                                  child: state.when(
                                    initial: () => _emptyView(),
                                    fileSuccess: (filesList) =>
                                        filesList.isEmpty
                                            ? _emptyView()
                                            : _hasDataView(filesList),
                                  ),
                                ),
                                onDragDone: (details) {
                                  _dropFile(details.files.first);
                                },
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  _sendFileButton()
                ],
              ),
            ),
          ),
          FxBox.h24,
          BlocBuilder<FormUploadFileBloc, FormUploadFileState>(
            builder: (context, state) {
              if (isExcelFile) {
                var excel = Excel.decodeBytes(bytes);
                Map<String, Sheet> loadedData = excel.sheets;
                Sheet? sheet;
                for (MapEntry<String, Sheet> item in loadedData.entries) {
                  sheet = item.value;
                  break;
                }
                return Card(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxHeight: MediaQuery.of(context).size.height - 300,
                      maxWidth: MediaQuery.of(context).size.width,
                      minWidth: MediaQuery.of(context).size.width,
                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: DataTable(
                          columnSpacing: Responsive.isWeb(context) ? 120 : 90,
                          showCheckboxColumn: false,
                          showBottomBorder: true,
                          dataRowHeight: 48,
                          border: TableBorder(
                            bottom: BorderSide(
                              width: 1,
                              color: isDark
                                  ? ColorConst.white.withOpacity(0.25)
                                  : Colors.grey.shade200,
                            ),
                            horizontalInside: BorderSide(
                              width: 1,
                              color: isDark
                                  ? ColorConst.white.withOpacity(0.25)
                                  : Colors.grey.shade50,
                            ),
                          ),
                          columns: sheet!.rows.first
                              .map((e) => DataColumn(
                                    label: ConstText.lightText(
                                      text: e?.value.toString() ?? '',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ))
                              .toList(),
                          rows: [
                            for (int i = 1; i < sheet.rows.length; i++) ...[
                              DataRow(
                                onSelectChanged: (value) {},
                                cells: sheet.rows[i]
                                    .map((e) => DataCell(
                                          ConstText.lightText(
                                            text: e?.value.toString() ?? '',
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ))
                                    .toList(),
                              ),
                            ]
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              } else {
                return FxBox.shrink;
              }
            },
          ),
        ],
      ),
    );
  }

  Widget _emptyView() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.cloud_upload_sharp,
          size: 60,
          color: Colors.grey,
        ),
        FxBox.h20,
        const Text(
          Strings.dropzoneText,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 22, color: Colors.grey),
        ),
      ],
    );
  }

  Widget _hasDataView(List<dynamic> fileData) {
    return Wrap(
      runSpacing: 30.0,
      spacing: 30.0,
      children: fileData.map(
        (e) {
          return FutureBuilder<Map<String, dynamic>>(
            future: _fileData(e),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return FxBox.shrink;
              }
              final size = snapshot.data!['size'];
              final fileType = snapshot.data!['mime'];
              final isImage = fileType!.startsWith('image') ? true : false;
              return FxHover(builder: (isHover) {
                return Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                        image: isImage
                            ? DecorationImage(
                                image: MemoryImage(snapshot.data!['bytes']),
                                fit: BoxFit.cover,
                              )
                            : null,
                        color: isDark
                            ? ColorConst.lightFontColor
                            : ColorConst.file,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: isImage
                          ? ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: BackdropFilter(
                                  filter: isHover
                                      ? ImageFilter.blur(sigmaX: 10, sigmaY: 10)
                                      : ImageFilter.blur(
                                          sigmaX: 0.1, sigmaY: 0.1),
                                  child: isHover
                                      ? _fileDetailView(
                                          size,
                                          snapshot.data!['name'],
                                        )
                                      : null),
                            )
                          : _fileDetailView(size, snapshot.data!['name']),
                    ),
                    Positioned(
                      right: 0.0,
                      child: InkWell(
                        hoverColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () {
                          isExcelFile = false;
                          List<dynamic> tempList = _filesList.toList();
                          tempList.removeAt(fileData.indexOf(e));
                          _filesList = tempList;
                          _formUploadFileBloc
                              .add(FormUploadFileEvent.addFile(_filesList));
                        },
                        child: Container(
                          padding: const EdgeInsets.all(4.0),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: const SvgIcon(
                            icon: IconlyBroken.closeSquare,
                            size: 14.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              });
            },
          );
        },
      ).toList(),
    );
  }

  Widget _fileDetailView(String size, String name) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 6.4,
          ),
          color: ColorConst.white.withOpacity(0.4),
          child: Text(
            size,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w500,
              color: ColorConst.black,
            ),
          ),
        ),
        FxBox.h12,
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 13.0,
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 5.2,
          ),
          color: ColorConst.white.withOpacity(0.4),
          child: Text(
            name,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 14,
              color: ColorConst.black,
            ),
          ),
        ),
      ],
    );
  }

  Widget _sendFileButton() {
    return FxButton(
      borderRadius: 4,
      onPressed: () {
        _formUploadFileBloc.add(const FormUploadFileEvent.clear());
      },
      text: 'Send Files',
    );
  }

  Future<void> _dropFile(XFile files) async {
    isExcelFile = false;
    _filesList.clear();
    _filesList.add(files);

    bytes = await files.readAsBytes();
    if (files.name.split('.').last == 'xlsx') {
      isExcelFile = true;
    }
    _formUploadFileBloc.add(FormUploadFileEvent.addFile(_filesList));
  }

  Future<void> _pickFile(PlatformFile files) async {
    isExcelFile = false;
    _filesList.clear();
    _filesList.add(files);

    bytes = files.bytes!;
    if (files.name.split('.').last == 'xlsx') {
      isExcelFile = true;
    }
    _formUploadFileBloc.add(FormUploadFileEvent.addFile(_filesList));
  }

  Future<Map<String, dynamic>> _fileData(dynamic file) async {
    if (file.runtimeType == PlatformFile) {
      return {
        'name': file.name.split('/').last,
        'size': _getPickFileSize(file.size),
        'mime': lookupMimeType(file.name),
        'bytes': file.bytes,
      };
    } else {
      return {
        'name': file.name.split('/').last,
        'size': await _getFileSize(file),
        'mime': lookupMimeType(file.name),
        'bytes': await file.readAsBytes(),
      };
    }
  }

  Future<String> _getFileSize(XFile file) async {
    if (await file.length() / 1024 <= 1000) {
      return '${(await file.length() / 1024).toStringAsFixed(2)} KB';
    } else {
      return '${((await file.length() / 1024) / 1024).toStringAsFixed(2)} MB';
    }
  }

  String _getPickFileSize(int size) {
    if (size / 1024 <= 1000) {
      return '${(size / 1024).toStringAsFixed(2)} KB';
    } else {
      return '${((size / 1024) / 1024).toStringAsFixed(2)} MB';
    }
  }
}
