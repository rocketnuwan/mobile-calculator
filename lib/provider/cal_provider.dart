import 'package:flutter/material.dart';

class CalProvider extends ChangeNotifier {
  double _result = 0;
  bool _isOparater = false;
  bool _isOparaterClick = false;
  double _firstNum = 0;
  double _secondNum = 0;
  String _oprater = "";
  String _text = "";
  bool _isDot = false;

  String a = "";

  get getresult {
    if (_text != "") {
      a = _text;
      _text = "";
      return a;
    } else if (_result % 1 == 0) {
      return _result.toInt();
    } else {
      return _result;
    }
  }

  void setClear() {
    _result = 0;
    _firstNum = 0;
    _secondNum = 0;
    _isOparater = false;
    _isOparaterClick = false;
    _oprater = "";
    _isDot = false;
    _text = "";

    notifyListeners();
  }

  void setClearx() {
    if (_result / 10 < 1) {
      _result = 0;
    } else {
      int end = _result.toString().length;
      _result = double.parse(_result.toString().substring(0, end - 3));
      _firstNum = _result;
    }
    _isOparaterClick = false;
    notifyListeners();
  }

  void setCal(String op) {
    if (op == _oprater || _oprater == "") {
      switch (op) {
        case '+':
          {
            setAdd();
          }
          break;
        case '-':
          {
            setSub();
          }
          break;
        case '*':
          {
            setMul();
          }
          break;
        case '/':
          {
            setDiv();
          }
          break;
      }
    } else {
      switch (_oprater) {
        case '+':
          {
            setAdd();
          }
          break;
        case '-':
          {
            setSub();
          }
          break;
        case '*':
          {
            setMul();
          }
          break;
        case '/':
          {
            setDiv();
          }
          break;
      }
    }
    _oprater = op;
    _isOparaterClick = true;
    notifyListeners();
  }

  void setAdd() {
    if (_isOparater) {
      if (_isOparaterClick) {
        _firstNum = _firstNum + _secondNum;
        _result = _firstNum;
      } else {
        _secondNum = _result;
        _firstNum = _firstNum + _secondNum;
        _result = _firstNum;
      }
    } else {
      _firstNum = _result;
      _isOparater = true;
    }
  }

  void setSub() {
    if (_isOparater) {
      if (_isOparaterClick) {
        _firstNum = _firstNum - _secondNum;
        _result = _firstNum;
      } else {
        _secondNum = _result;
        _firstNum = _firstNum - _secondNum;
        _result = _firstNum;
      }
    } else {
      _firstNum = _result;
      _isOparater = true;
    }
  }

  void setMul() {
    if (_isOparater) {
      if (_isOparaterClick) {
        _firstNum = _firstNum * _secondNum;
        _result = _firstNum;
      } else {
        _secondNum = _result;
        _firstNum = _firstNum * _secondNum;
        _result = _firstNum;
      }
    } else {
      _firstNum = _result;
      _isOparater = true;
    }
  }

  void setDiv() {
    if (_isOparater) {
      if (_isOparaterClick) {
        _firstNum = _firstNum / _secondNum;
        _result = _firstNum;
      } else {
        _secondNum = _result;
        _firstNum = _firstNum / _secondNum;
        _result = _firstNum;
      }
    } else {
      _firstNum = _result;
      _isOparater = true;
    }
  }

  void equal() {
    switch (_oprater) {
      case '+':
        {
          _result = _firstNum + _result;
        }
        break;
      case '-':
        {
          _result = _firstNum - _result;
        }
        break;
      case '*':
        {
          _result = _firstNum * _result;
        }
        break;
      case '/':
        {
          _result = _firstNum / _result;
        }
        break;
    }
    notifyListeners();
  }

  void setNumber(int n) {
    int namber = n;
    if (_isDot) {
      if (_result % 1 == 0) {
        _result =
            double.parse(_result.toInt().toString() + '.' + namber.toString());
      } else {
        _result = double.parse(_result.toString() + namber.toString());
      }
    } else {
      if (_result == 0 || _isOparaterClick) {
        _result = namber.toDouble();
      } else if (_result % 1 == 0) {
        _result = double.parse(_result.toInt().toString() + namber.toString());
      } else {
        _result = double.parse(_result.toString() + namber.toString());
      }
    }
    _isDot = false;
    _isOparaterClick = false;
    notifyListeners();
  }

  void setDot() {
    if (_result == 0 || _isOparaterClick) {
      _text = "0.";
    } else {
      _text = _result.toInt().toString() + ".";
    }

    _isOparaterClick = false;
    _isDot = true;
    notifyListeners();
  }
}
