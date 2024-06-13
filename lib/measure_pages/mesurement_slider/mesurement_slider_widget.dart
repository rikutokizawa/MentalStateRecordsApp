import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'mesurement_slider_model.dart';
export 'mesurement_slider_model.dart';

class MesurementSliderWidget extends StatefulWidget {
  const MesurementSliderWidget({
    super.key,
    this.parameter1,
    this.parameter2,
    this.parameter3,
    this.parameter4,
    double? initialvalue,
  }) : initialvalue = initialvalue ?? 0.0;

  final String? parameter1;
  final String? parameter2;
  final String? parameter3;
  final int? parameter4;
  final double initialvalue;

  @override
  State<MesurementSliderWidget> createState() => _MesurementSliderWidgetState();
}

class _MesurementSliderWidgetState extends State<MesurementSliderWidget> {
  late MesurementSliderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MesurementSliderModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: const [
            BoxShadow(
              blurRadius: 5.0,
              color: Color(0x3416202A),
              offset: Offset(
                0.0,
                2.0,
              ),
            )
          ],
          borderRadius: BorderRadius.circular(12.0),
          shape: BoxShape.rectangle,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Text(
                        widget.parameter1!,
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              fontFamily: 'Readex Pro',
                              fontSize: 20.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        12.0, 0.0, 12.0, 0.0),
                    child: Text(
                      widget.parameter2!,
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        12.0, 0.0, 12.0, 0.0),
                    child: Text(
                      widget.parameter3!,
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            SliderTheme(
              data: const SliderThemeData(
                showValueIndicator: ShowValueIndicator.always,
              ),
              child: Slider(
                activeColor: FlutterFlowTheme.of(context).primary,
                inactiveColor: FlutterFlowTheme.of(context).alternate,
                min: valueOrDefault<double>(
                  -((widget.parameter4!) - 1) / 2,
                  -3.0,
                ),
                max: valueOrDefault<double>(
                  ((widget.parameter4!) - 1) / 2,
                  3.0,
                ),
                value: _model.sliderValue ??= valueOrDefault<double>(
                  widget.initialvalue,
                  0.0,
                ),
                label: _model.sliderValue?.toStringAsFixed(1),
                onChanged: (newValue) {
                  newValue = double.parse(newValue.toStringAsFixed(1));
                  setState(() => _model.sliderValue = newValue);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
