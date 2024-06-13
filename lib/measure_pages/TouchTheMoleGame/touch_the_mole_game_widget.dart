import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:async';
import 'dart:math';

import 'touch_the_mole_game_model.dart';
export 'touch_the_mole_game_model.dart';

class TouchTheMoleGameWidget extends StatefulWidget {
  const TouchTheMoleGameWidget({super.key});

  @override
  State<TouchTheMoleGameWidget> createState() => _TouchTheMoleGameWidgetState();
}

class _TouchTheMoleGameWidgetState extends State<TouchTheMoleGameWidget> {
  late TouchTheMoleGameModel _model;

  // ----------追加コード----------
  int _score = 0;
  bool _gameStarted = false;
  bool _isStrongMoleMode = false; // 強いモグラモードの状態
  Timer? _timer;
  int _timeLeft = 30;
  Offset _molePosition = Offset.zero;

  final Random _random = Random();

  // モグラの画像リスト
  final List<String> _normalMoleImages = [
    'assets/images/mole.png',
  ];
  final List<String> _strongMoleImages = [
    'assets/images/mole2.png',
    'assets/images/mole3.png',
    'assets/images/mole4.png',
  ];
  late String _currentMoleImage;

  void _startGame(BoxConstraints constraints) {
    setState(() {
      _score = 0;
      _gameStarted = true;
      _timeLeft = 30;
      // _isStrongMoleMode = false;
      _currentMoleImage =
          _normalMoleImages[_random.nextInt(_normalMoleImages.length)];
    });

    _moveMole(constraints);

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_timeLeft > 0) {
          _timeLeft--;
        } else {
          _gameStarted = false;
          timer.cancel();
          // ----------ハイスコアの更新----------
          if (_score > (_model.highscore ?? 0)) {
            _model.highscore = _score;
          }
        }
      });
    });
  }

  void _moveMole(BoxConstraints constraints) {
    if (_gameStarted) {
      setState(() {
        _molePosition = Offset(
          _random.nextDouble() * (constraints.maxWidth - 50),
          _random.nextDouble() * (constraints.maxHeight - 50),
        );
        _currentMoleImage = _isStrongMoleMode
            ? _strongMoleImages[_random.nextInt(_strongMoleImages.length)]
            : _normalMoleImages[_random.nextInt(_normalMoleImages.length)];
      });

      Future.delayed(Duration(milliseconds: _isStrongMoleMode ? 350 : 450),
          () => _moveMole(constraints));
    }
  }

  void _incrementScore() {
    if (_gameStarted) {
      setState(() {
        _score++;
      });
    }
  }

  // ----------ここまで----------

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TouchTheMoleGameModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();
    _timer?.cancel(); //タイマーストップ用に追加
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: const AlignmentDirectional(0.0, -1.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(0.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 6.0,
            sigmaY: 6.0,
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 100.0, 0.0, 0.0),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 7.0,
                    color: Color(0x33000000),
                    offset: Offset(
                      0.0,
                      -2.0,
                    ),
                  )
                ],
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(0.0),
                  bottomRight: Radius.circular(0.0),
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 60.0,
                          height: 3.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).alternate,
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                        child: LayoutBuilder(builder: (context, constraints) {
                      return Stack(
                        children: <Widget>[
                          // 強いモグラモードの時に地獄の背景を表示
                          if (_isStrongMoleMode)
                            Positioned.fill(
                              child: Image.asset(
                                'assets/images/hell_background.png', // 地獄の背景画像を表示
                                fit: BoxFit.cover,
                              ),
                            ),

                          Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Time Left: $_timeLeft',
                                  style: const TextStyle(fontSize: 24),
                                ),
                                const SizedBox(height: 20),
                                Text(
                                  '今回のハイスコア: ${_model.highscore}',
                                  style: const TextStyle(fontSize: 24),
                                ),
                                const SizedBox(height: 20),
                                Text(
                                  '前回までのハイスコア: ${FFAppState().HighScore}',
                                  style: const TextStyle(fontSize: 24),
                                ),
                                const SizedBox(height: 20),
                                Text(
                                  'Score: $_score',
                                  style: const TextStyle(fontSize: 24),
                                ),
                                const SizedBox(height: 20),
                                if (FFAppState().HighScore > 50 &&
                                    !_isStrongMoleMode &&
                                    !_gameStarted)
                                  ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        _isStrongMoleMode = true;
                                      });
                                    },
                                    child: const Text(
                                      '強いモグラモードを開始',
                                      style: TextStyle(fontSize: 24),
                                    ),
                                  ),
                                const SizedBox(height: 20),
                                !_gameStarted
                                    ? ElevatedButton(
                                        onPressed: () =>
                                            _startGame(constraints),
                                        child: const Text(
                                          'Start Game',
                                          style: TextStyle(fontSize: 24),
                                        ),
                                      )
                                    : Container(),
                              ],
                            ),
                          ),
                          if (_gameStarted)
                            Positioned(
                              left: _molePosition.dx,
                              top: _molePosition.dy,
                              child: GestureDetector(
                                onTap: _incrementScore,
                                child: Image.asset(
                                  _currentMoleImage, // ランダムに選択されたモグラの画像
                                  width: 50,
                                  height: 50,
                                ),
                              ),
                            ),
                        ],
                      );
                    })),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          16.0, 44.0, 16.0, 44.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          if (_model.highscore! > FFAppState().HighScore) {
                            FFAppState().HighScore = _model.highscore!;
                            setState(() {});
                          }
                          Navigator.pop(context);
                        },
                        text: '終了する',
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 50.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 2.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
