import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:todo/domain/entities/id.dart';
import 'package:todo/domain/entities/todo.dart';
import 'package:todo/domain/entities/todo_color.dart';

class TodoModel {
  final String id;
  final String title;
  final String body;
  final bool done;
  final int color;
  final dynamic serverTimeStamp;

  TodoModel(
      {required this.id,
      required this.body,
      required this.title,
      required this.color,
      required this.done,
      required this.serverTimeStamp});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'body': body,
      'done': done,
      'color': color,
      'serverTimeStamp': serverTimeStamp,
    };
  }

  factory TodoModel.fromMap(Map<String, dynamic> map) {
    return TodoModel(
      id: "",
      title: map['title'] as String,
      body: map['body'] as String,
      done: map['done'] as bool,
      color: map['color'] as int,
      serverTimeStamp: map['serverTimeStamp'],
    );
  }

  TodoModel copyWith({
    String? id,
    String? title,
    String? body,
    bool? done,
    int? color,
    dynamic? serverTimeStamp,
  }) {
    return TodoModel(
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
      done: done ?? this.done,
      color: color ?? this.color,
      serverTimeStamp: serverTimeStamp ?? this.serverTimeStamp,
    );
  }

  factory TodoModel.fromFirestore(
      QueryDocumentSnapshot<Map<String, dynamic>> doc) {
    return TodoModel.fromMap(doc.data()).copyWith(id: doc.id);
  }

  Todo toDomain() {
    return Todo(
        id: UniqueID.fromUniqueString(id),
        title: title,
        body: body,
        done: done,
        color: TodoColor(color: Color(color).withOpacity(1)));
  }

  factory TodoModel.fromDomain(Todo todoItem) {
    return TodoModel(
        id: todoItem.id.value,
        body: todoItem.body,
        title: todoItem.title,
        color: todoItem.color.color.value,
        done: todoItem.done,
        serverTimeStamp: FieldValue.serverTimestamp());
  }
}
