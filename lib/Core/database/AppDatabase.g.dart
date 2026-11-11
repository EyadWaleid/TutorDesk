// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AppDatabase.dart';

// ignore_for_file: type=lint
class $ClassTableTable extends ClassTable
    with TableInfo<$ClassTableTable, ClassTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ClassTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _salaryPerStudentMeta = const VerificationMeta(
    'salaryPerStudent',
  );
  @override
  late final GeneratedColumn<int> salaryPerStudent = GeneratedColumn<int>(
    'salary_per_student',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _timeMeta = const VerificationMeta('time');
  @override
  late final GeneratedColumn<String> time = GeneratedColumn<String>(
    'time',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<String> date = GeneratedColumn<String>(
    'date',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _whatsAppGroupMeta = const VerificationMeta(
    'whatsAppGroup',
  );
  @override
  late final GeneratedColumn<String> whatsAppGroup = GeneratedColumn<String>(
    'whats_app_group',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    name,
    salaryPerStudent,
    time,
    date,
    whatsAppGroup,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'class_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<ClassTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('salary_per_student')) {
      context.handle(
        _salaryPerStudentMeta,
        salaryPerStudent.isAcceptableOrUnknown(
          data['salary_per_student']!,
          _salaryPerStudentMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_salaryPerStudentMeta);
    }
    if (data.containsKey('time')) {
      context.handle(
        _timeMeta,
        time.isAcceptableOrUnknown(data['time']!, _timeMeta),
      );
    } else if (isInserting) {
      context.missing(_timeMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
        _dateMeta,
        date.isAcceptableOrUnknown(data['date']!, _dateMeta),
      );
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('whats_app_group')) {
      context.handle(
        _whatsAppGroupMeta,
        whatsAppGroup.isAcceptableOrUnknown(
          data['whats_app_group']!,
          _whatsAppGroupMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_whatsAppGroupMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ClassTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ClassTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      salaryPerStudent: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}salary_per_student'],
      )!,
      time: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}time'],
      )!,
      date: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}date'],
      )!,
      whatsAppGroup: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}whats_app_group'],
      )!,
    );
  }

  @override
  $ClassTableTable createAlias(String alias) {
    return $ClassTableTable(attachedDatabase, alias);
  }
}

class ClassTableData extends DataClass implements Insertable<ClassTableData> {
  final int id;
  final String name;
  final int salaryPerStudent;
  final String time;
  final String date;
  final String whatsAppGroup;
  const ClassTableData({
    required this.id,
    required this.name,
    required this.salaryPerStudent,
    required this.time,
    required this.date,
    required this.whatsAppGroup,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['salary_per_student'] = Variable<int>(salaryPerStudent);
    map['time'] = Variable<String>(time);
    map['date'] = Variable<String>(date);
    map['whats_app_group'] = Variable<String>(whatsAppGroup);
    return map;
  }

  ClassTableCompanion toCompanion(bool nullToAbsent) {
    return ClassTableCompanion(
      id: Value(id),
      name: Value(name),
      salaryPerStudent: Value(salaryPerStudent),
      time: Value(time),
      date: Value(date),
      whatsAppGroup: Value(whatsAppGroup),
    );
  }

  factory ClassTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ClassTableData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      salaryPerStudent: serializer.fromJson<int>(json['salaryPerStudent']),
      time: serializer.fromJson<String>(json['time']),
      date: serializer.fromJson<String>(json['date']),
      whatsAppGroup: serializer.fromJson<String>(json['whatsAppGroup']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'salaryPerStudent': serializer.toJson<int>(salaryPerStudent),
      'time': serializer.toJson<String>(time),
      'date': serializer.toJson<String>(date),
      'whatsAppGroup': serializer.toJson<String>(whatsAppGroup),
    };
  }

  ClassTableData copyWith({
    int? id,
    String? name,
    int? salaryPerStudent,
    String? time,
    String? date,
    String? whatsAppGroup,
  }) => ClassTableData(
    id: id ?? this.id,
    name: name ?? this.name,
    salaryPerStudent: salaryPerStudent ?? this.salaryPerStudent,
    time: time ?? this.time,
    date: date ?? this.date,
    whatsAppGroup: whatsAppGroup ?? this.whatsAppGroup,
  );
  ClassTableData copyWithCompanion(ClassTableCompanion data) {
    return ClassTableData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      salaryPerStudent: data.salaryPerStudent.present
          ? data.salaryPerStudent.value
          : this.salaryPerStudent,
      time: data.time.present ? data.time.value : this.time,
      date: data.date.present ? data.date.value : this.date,
      whatsAppGroup: data.whatsAppGroup.present
          ? data.whatsAppGroup.value
          : this.whatsAppGroup,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ClassTableData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('salaryPerStudent: $salaryPerStudent, ')
          ..write('time: $time, ')
          ..write('date: $date, ')
          ..write('whatsAppGroup: $whatsAppGroup')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, name, salaryPerStudent, time, date, whatsAppGroup);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ClassTableData &&
          other.id == this.id &&
          other.name == this.name &&
          other.salaryPerStudent == this.salaryPerStudent &&
          other.time == this.time &&
          other.date == this.date &&
          other.whatsAppGroup == this.whatsAppGroup);
}

class ClassTableCompanion extends UpdateCompanion<ClassTableData> {
  final Value<int> id;
  final Value<String> name;
  final Value<int> salaryPerStudent;
  final Value<String> time;
  final Value<String> date;
  final Value<String> whatsAppGroup;
  const ClassTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.salaryPerStudent = const Value.absent(),
    this.time = const Value.absent(),
    this.date = const Value.absent(),
    this.whatsAppGroup = const Value.absent(),
  });
  ClassTableCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required int salaryPerStudent,
    required String time,
    required String date,
    required String whatsAppGroup,
  }) : name = Value(name),
       salaryPerStudent = Value(salaryPerStudent),
       time = Value(time),
       date = Value(date),
       whatsAppGroup = Value(whatsAppGroup);
  static Insertable<ClassTableData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<int>? salaryPerStudent,
    Expression<String>? time,
    Expression<String>? date,
    Expression<String>? whatsAppGroup,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (salaryPerStudent != null) 'salary_per_student': salaryPerStudent,
      if (time != null) 'time': time,
      if (date != null) 'date': date,
      if (whatsAppGroup != null) 'whats_app_group': whatsAppGroup,
    });
  }

  ClassTableCompanion copyWith({
    Value<int>? id,
    Value<String>? name,
    Value<int>? salaryPerStudent,
    Value<String>? time,
    Value<String>? date,
    Value<String>? whatsAppGroup,
  }) {
    return ClassTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      salaryPerStudent: salaryPerStudent ?? this.salaryPerStudent,
      time: time ?? this.time,
      date: date ?? this.date,
      whatsAppGroup: whatsAppGroup ?? this.whatsAppGroup,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (salaryPerStudent.present) {
      map['salary_per_student'] = Variable<int>(salaryPerStudent.value);
    }
    if (time.present) {
      map['time'] = Variable<String>(time.value);
    }
    if (date.present) {
      map['date'] = Variable<String>(date.value);
    }
    if (whatsAppGroup.present) {
      map['whats_app_group'] = Variable<String>(whatsAppGroup.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ClassTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('salaryPerStudent: $salaryPerStudent, ')
          ..write('time: $time, ')
          ..write('date: $date, ')
          ..write('whatsAppGroup: $whatsAppGroup')
          ..write(')'))
        .toString();
  }
}

class $StudentTableTable extends StudentTable
    with TableInfo<$StudentTableTable, StudentTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $StudentTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _phoneNumberMeta = const VerificationMeta(
    'phoneNumber',
  );
  @override
  late final GeneratedColumn<String> phoneNumber = GeneratedColumn<String>(
    'phone_number',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _addressMeta = const VerificationMeta(
    'address',
  );
  @override
  late final GeneratedColumn<String> address = GeneratedColumn<String>(
    'address',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _genderMeta = const VerificationMeta('gender');
  @override
  late final GeneratedColumn<String> gender = GeneratedColumn<String>(
    'gender',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _parentPhoneNumberMeta = const VerificationMeta(
    'parentPhoneNumber',
  );
  @override
  late final GeneratedColumn<String> parentPhoneNumber =
      GeneratedColumn<String>(
        'parent_phone_number',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _isPaidMeta = const VerificationMeta('isPaid');
  @override
  late final GeneratedColumn<bool> isPaid = GeneratedColumn<bool>(
    'is_paid',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_paid" IN (0, 1))',
    ),
  );
  static const VerificationMeta _classIdMeta = const VerificationMeta(
    'classId',
  );
  @override
  late final GeneratedColumn<int> classId = GeneratedColumn<int>(
    'class_id',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES class_table (id) ON DELETE CASCADE',
    ),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    name,
    phoneNumber,
    address,
    gender,
    parentPhoneNumber,
    isPaid,
    classId,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'student_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<StudentTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('phone_number')) {
      context.handle(
        _phoneNumberMeta,
        phoneNumber.isAcceptableOrUnknown(
          data['phone_number']!,
          _phoneNumberMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_phoneNumberMeta);
    }
    if (data.containsKey('address')) {
      context.handle(
        _addressMeta,
        address.isAcceptableOrUnknown(data['address']!, _addressMeta),
      );
    } else if (isInserting) {
      context.missing(_addressMeta);
    }
    if (data.containsKey('gender')) {
      context.handle(
        _genderMeta,
        gender.isAcceptableOrUnknown(data['gender']!, _genderMeta),
      );
    } else if (isInserting) {
      context.missing(_genderMeta);
    }
    if (data.containsKey('parent_phone_number')) {
      context.handle(
        _parentPhoneNumberMeta,
        parentPhoneNumber.isAcceptableOrUnknown(
          data['parent_phone_number']!,
          _parentPhoneNumberMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_parentPhoneNumberMeta);
    }
    if (data.containsKey('is_paid')) {
      context.handle(
        _isPaidMeta,
        isPaid.isAcceptableOrUnknown(data['is_paid']!, _isPaidMeta),
      );
    } else if (isInserting) {
      context.missing(_isPaidMeta);
    }
    if (data.containsKey('class_id')) {
      context.handle(
        _classIdMeta,
        classId.isAcceptableOrUnknown(data['class_id']!, _classIdMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  StudentTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return StudentTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      phoneNumber: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}phone_number'],
      )!,
      address: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}address'],
      )!,
      gender: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}gender'],
      )!,
      parentPhoneNumber: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}parent_phone_number'],
      )!,
      isPaid: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_paid'],
      )!,
      classId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}class_id'],
      ),
    );
  }

  @override
  $StudentTableTable createAlias(String alias) {
    return $StudentTableTable(attachedDatabase, alias);
  }
}

class StudentTableData extends DataClass
    implements Insertable<StudentTableData> {
  final int id;
  final String name;
  final String phoneNumber;
  final String address;
  final String gender;
  final String parentPhoneNumber;
  final bool isPaid;
  final int? classId;
  const StudentTableData({
    required this.id,
    required this.name,
    required this.phoneNumber,
    required this.address,
    required this.gender,
    required this.parentPhoneNumber,
    required this.isPaid,
    this.classId,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['phone_number'] = Variable<String>(phoneNumber);
    map['address'] = Variable<String>(address);
    map['gender'] = Variable<String>(gender);
    map['parent_phone_number'] = Variable<String>(parentPhoneNumber);
    map['is_paid'] = Variable<bool>(isPaid);
    if (!nullToAbsent || classId != null) {
      map['class_id'] = Variable<int>(classId);
    }
    return map;
  }

  StudentTableCompanion toCompanion(bool nullToAbsent) {
    return StudentTableCompanion(
      id: Value(id),
      name: Value(name),
      phoneNumber: Value(phoneNumber),
      address: Value(address),
      gender: Value(gender),
      parentPhoneNumber: Value(parentPhoneNumber),
      isPaid: Value(isPaid),
      classId: classId == null && nullToAbsent
          ? const Value.absent()
          : Value(classId),
    );
  }

  factory StudentTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return StudentTableData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      phoneNumber: serializer.fromJson<String>(json['phoneNumber']),
      address: serializer.fromJson<String>(json['address']),
      gender: serializer.fromJson<String>(json['gender']),
      parentPhoneNumber: serializer.fromJson<String>(json['parentPhoneNumber']),
      isPaid: serializer.fromJson<bool>(json['isPaid']),
      classId: serializer.fromJson<int?>(json['classId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'phoneNumber': serializer.toJson<String>(phoneNumber),
      'address': serializer.toJson<String>(address),
      'gender': serializer.toJson<String>(gender),
      'parentPhoneNumber': serializer.toJson<String>(parentPhoneNumber),
      'isPaid': serializer.toJson<bool>(isPaid),
      'classId': serializer.toJson<int?>(classId),
    };
  }

  StudentTableData copyWith({
    int? id,
    String? name,
    String? phoneNumber,
    String? address,
    String? gender,
    String? parentPhoneNumber,
    bool? isPaid,
    Value<int?> classId = const Value.absent(),
  }) => StudentTableData(
    id: id ?? this.id,
    name: name ?? this.name,
    phoneNumber: phoneNumber ?? this.phoneNumber,
    address: address ?? this.address,
    gender: gender ?? this.gender,
    parentPhoneNumber: parentPhoneNumber ?? this.parentPhoneNumber,
    isPaid: isPaid ?? this.isPaid,
    classId: classId.present ? classId.value : this.classId,
  );
  StudentTableData copyWithCompanion(StudentTableCompanion data) {
    return StudentTableData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      phoneNumber: data.phoneNumber.present
          ? data.phoneNumber.value
          : this.phoneNumber,
      address: data.address.present ? data.address.value : this.address,
      gender: data.gender.present ? data.gender.value : this.gender,
      parentPhoneNumber: data.parentPhoneNumber.present
          ? data.parentPhoneNumber.value
          : this.parentPhoneNumber,
      isPaid: data.isPaid.present ? data.isPaid.value : this.isPaid,
      classId: data.classId.present ? data.classId.value : this.classId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('StudentTableData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('phoneNumber: $phoneNumber, ')
          ..write('address: $address, ')
          ..write('gender: $gender, ')
          ..write('parentPhoneNumber: $parentPhoneNumber, ')
          ..write('isPaid: $isPaid, ')
          ..write('classId: $classId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    name,
    phoneNumber,
    address,
    gender,
    parentPhoneNumber,
    isPaid,
    classId,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is StudentTableData &&
          other.id == this.id &&
          other.name == this.name &&
          other.phoneNumber == this.phoneNumber &&
          other.address == this.address &&
          other.gender == this.gender &&
          other.parentPhoneNumber == this.parentPhoneNumber &&
          other.isPaid == this.isPaid &&
          other.classId == this.classId);
}

class StudentTableCompanion extends UpdateCompanion<StudentTableData> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> phoneNumber;
  final Value<String> address;
  final Value<String> gender;
  final Value<String> parentPhoneNumber;
  final Value<bool> isPaid;
  final Value<int?> classId;
  const StudentTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.phoneNumber = const Value.absent(),
    this.address = const Value.absent(),
    this.gender = const Value.absent(),
    this.parentPhoneNumber = const Value.absent(),
    this.isPaid = const Value.absent(),
    this.classId = const Value.absent(),
  });
  StudentTableCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String phoneNumber,
    required String address,
    required String gender,
    required String parentPhoneNumber,
    required bool isPaid,
    this.classId = const Value.absent(),
  }) : name = Value(name),
       phoneNumber = Value(phoneNumber),
       address = Value(address),
       gender = Value(gender),
       parentPhoneNumber = Value(parentPhoneNumber),
       isPaid = Value(isPaid);
  static Insertable<StudentTableData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? phoneNumber,
    Expression<String>? address,
    Expression<String>? gender,
    Expression<String>? parentPhoneNumber,
    Expression<bool>? isPaid,
    Expression<int>? classId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (phoneNumber != null) 'phone_number': phoneNumber,
      if (address != null) 'address': address,
      if (gender != null) 'gender': gender,
      if (parentPhoneNumber != null) 'parent_phone_number': parentPhoneNumber,
      if (isPaid != null) 'is_paid': isPaid,
      if (classId != null) 'class_id': classId,
    });
  }

  StudentTableCompanion copyWith({
    Value<int>? id,
    Value<String>? name,
    Value<String>? phoneNumber,
    Value<String>? address,
    Value<String>? gender,
    Value<String>? parentPhoneNumber,
    Value<bool>? isPaid,
    Value<int?>? classId,
  }) {
    return StudentTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      address: address ?? this.address,
      gender: gender ?? this.gender,
      parentPhoneNumber: parentPhoneNumber ?? this.parentPhoneNumber,
      isPaid: isPaid ?? this.isPaid,
      classId: classId ?? this.classId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (phoneNumber.present) {
      map['phone_number'] = Variable<String>(phoneNumber.value);
    }
    if (address.present) {
      map['address'] = Variable<String>(address.value);
    }
    if (gender.present) {
      map['gender'] = Variable<String>(gender.value);
    }
    if (parentPhoneNumber.present) {
      map['parent_phone_number'] = Variable<String>(parentPhoneNumber.value);
    }
    if (isPaid.present) {
      map['is_paid'] = Variable<bool>(isPaid.value);
    }
    if (classId.present) {
      map['class_id'] = Variable<int>(classId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('StudentTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('phoneNumber: $phoneNumber, ')
          ..write('address: $address, ')
          ..write('gender: $gender, ')
          ..write('parentPhoneNumber: $parentPhoneNumber, ')
          ..write('isPaid: $isPaid, ')
          ..write('classId: $classId')
          ..write(')'))
        .toString();
  }
}

class $LessonsTableTable extends LessonsTable
    with TableInfo<$LessonsTableTable, LessonsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LessonsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<String> date = GeneratedColumn<String>(
    'date',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isPaidMeta = const VerificationMeta('isPaid');
  @override
  late final GeneratedColumn<bool> isPaid = GeneratedColumn<bool>(
    'is_paid',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_paid" IN (0, 1))',
    ),
  );
  static const VerificationMeta _isAttendedMeta = const VerificationMeta(
    'isAttended',
  );
  @override
  late final GeneratedColumn<bool> isAttended = GeneratedColumn<bool>(
    'is_attended',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_attended" IN (0, 1))',
    ),
  );
  static const VerificationMeta _classIdMeta = const VerificationMeta(
    'classId',
  );
  @override
  late final GeneratedColumn<int> classId = GeneratedColumn<int>(
    'class_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES class_table (id) ON DELETE CASCADE',
    ),
  );
  @override
  List<GeneratedColumn> get $columns => [id, date, isPaid, isAttended, classId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'lessons_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<LessonsTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('date')) {
      context.handle(
        _dateMeta,
        date.isAcceptableOrUnknown(data['date']!, _dateMeta),
      );
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('is_paid')) {
      context.handle(
        _isPaidMeta,
        isPaid.isAcceptableOrUnknown(data['is_paid']!, _isPaidMeta),
      );
    } else if (isInserting) {
      context.missing(_isPaidMeta);
    }
    if (data.containsKey('is_attended')) {
      context.handle(
        _isAttendedMeta,
        isAttended.isAcceptableOrUnknown(data['is_attended']!, _isAttendedMeta),
      );
    } else if (isInserting) {
      context.missing(_isAttendedMeta);
    }
    if (data.containsKey('class_id')) {
      context.handle(
        _classIdMeta,
        classId.isAcceptableOrUnknown(data['class_id']!, _classIdMeta),
      );
    } else if (isInserting) {
      context.missing(_classIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LessonsTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LessonsTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      date: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}date'],
      )!,
      isPaid: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_paid'],
      )!,
      isAttended: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_attended'],
      )!,
      classId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}class_id'],
      )!,
    );
  }

  @override
  $LessonsTableTable createAlias(String alias) {
    return $LessonsTableTable(attachedDatabase, alias);
  }
}

class LessonsTableData extends DataClass
    implements Insertable<LessonsTableData> {
  final int id;
  final String date;
  final bool isPaid;
  final bool isAttended;
  final int classId;
  const LessonsTableData({
    required this.id,
    required this.date,
    required this.isPaid,
    required this.isAttended,
    required this.classId,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['date'] = Variable<String>(date);
    map['is_paid'] = Variable<bool>(isPaid);
    map['is_attended'] = Variable<bool>(isAttended);
    map['class_id'] = Variable<int>(classId);
    return map;
  }

  LessonsTableCompanion toCompanion(bool nullToAbsent) {
    return LessonsTableCompanion(
      id: Value(id),
      date: Value(date),
      isPaid: Value(isPaid),
      isAttended: Value(isAttended),
      classId: Value(classId),
    );
  }

  factory LessonsTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LessonsTableData(
      id: serializer.fromJson<int>(json['id']),
      date: serializer.fromJson<String>(json['date']),
      isPaid: serializer.fromJson<bool>(json['isPaid']),
      isAttended: serializer.fromJson<bool>(json['isAttended']),
      classId: serializer.fromJson<int>(json['classId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'date': serializer.toJson<String>(date),
      'isPaid': serializer.toJson<bool>(isPaid),
      'isAttended': serializer.toJson<bool>(isAttended),
      'classId': serializer.toJson<int>(classId),
    };
  }

  LessonsTableData copyWith({
    int? id,
    String? date,
    bool? isPaid,
    bool? isAttended,
    int? classId,
  }) => LessonsTableData(
    id: id ?? this.id,
    date: date ?? this.date,
    isPaid: isPaid ?? this.isPaid,
    isAttended: isAttended ?? this.isAttended,
    classId: classId ?? this.classId,
  );
  LessonsTableData copyWithCompanion(LessonsTableCompanion data) {
    return LessonsTableData(
      id: data.id.present ? data.id.value : this.id,
      date: data.date.present ? data.date.value : this.date,
      isPaid: data.isPaid.present ? data.isPaid.value : this.isPaid,
      isAttended: data.isAttended.present
          ? data.isAttended.value
          : this.isAttended,
      classId: data.classId.present ? data.classId.value : this.classId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LessonsTableData(')
          ..write('id: $id, ')
          ..write('date: $date, ')
          ..write('isPaid: $isPaid, ')
          ..write('isAttended: $isAttended, ')
          ..write('classId: $classId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, date, isPaid, isAttended, classId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LessonsTableData &&
          other.id == this.id &&
          other.date == this.date &&
          other.isPaid == this.isPaid &&
          other.isAttended == this.isAttended &&
          other.classId == this.classId);
}

class LessonsTableCompanion extends UpdateCompanion<LessonsTableData> {
  final Value<int> id;
  final Value<String> date;
  final Value<bool> isPaid;
  final Value<bool> isAttended;
  final Value<int> classId;
  const LessonsTableCompanion({
    this.id = const Value.absent(),
    this.date = const Value.absent(),
    this.isPaid = const Value.absent(),
    this.isAttended = const Value.absent(),
    this.classId = const Value.absent(),
  });
  LessonsTableCompanion.insert({
    this.id = const Value.absent(),
    required String date,
    required bool isPaid,
    required bool isAttended,
    required int classId,
  }) : date = Value(date),
       isPaid = Value(isPaid),
       isAttended = Value(isAttended),
       classId = Value(classId);
  static Insertable<LessonsTableData> custom({
    Expression<int>? id,
    Expression<String>? date,
    Expression<bool>? isPaid,
    Expression<bool>? isAttended,
    Expression<int>? classId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (date != null) 'date': date,
      if (isPaid != null) 'is_paid': isPaid,
      if (isAttended != null) 'is_attended': isAttended,
      if (classId != null) 'class_id': classId,
    });
  }

  LessonsTableCompanion copyWith({
    Value<int>? id,
    Value<String>? date,
    Value<bool>? isPaid,
    Value<bool>? isAttended,
    Value<int>? classId,
  }) {
    return LessonsTableCompanion(
      id: id ?? this.id,
      date: date ?? this.date,
      isPaid: isPaid ?? this.isPaid,
      isAttended: isAttended ?? this.isAttended,
      classId: classId ?? this.classId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (date.present) {
      map['date'] = Variable<String>(date.value);
    }
    if (isPaid.present) {
      map['is_paid'] = Variable<bool>(isPaid.value);
    }
    if (isAttended.present) {
      map['is_attended'] = Variable<bool>(isAttended.value);
    }
    if (classId.present) {
      map['class_id'] = Variable<int>(classId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LessonsTableCompanion(')
          ..write('id: $id, ')
          ..write('date: $date, ')
          ..write('isPaid: $isPaid, ')
          ..write('isAttended: $isAttended, ')
          ..write('classId: $classId')
          ..write(')'))
        .toString();
  }
}

class $AssignmentTableTable extends AssignmentTable
    with TableInfo<$AssignmentTableTable, AssignmentTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AssignmentTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _isDoneMeta = const VerificationMeta('isDone');
  @override
  late final GeneratedColumn<bool> isDone = GeneratedColumn<bool>(
    'is_done',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_done" IN (0, 1))',
    ),
  );
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<String> date = GeneratedColumn<String>(
    'date',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, isDone, date];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'assignment_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<AssignmentTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('is_done')) {
      context.handle(
        _isDoneMeta,
        isDone.isAcceptableOrUnknown(data['is_done']!, _isDoneMeta),
      );
    } else if (isInserting) {
      context.missing(_isDoneMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
        _dateMeta,
        date.isAcceptableOrUnknown(data['date']!, _dateMeta),
      );
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AssignmentTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AssignmentTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      isDone: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_done'],
      )!,
      date: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}date'],
      )!,
    );
  }

  @override
  $AssignmentTableTable createAlias(String alias) {
    return $AssignmentTableTable(attachedDatabase, alias);
  }
}

class AssignmentTableData extends DataClass
    implements Insertable<AssignmentTableData> {
  final int id;
  final bool isDone;
  final String date;
  const AssignmentTableData({
    required this.id,
    required this.isDone,
    required this.date,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['is_done'] = Variable<bool>(isDone);
    map['date'] = Variable<String>(date);
    return map;
  }

  AssignmentTableCompanion toCompanion(bool nullToAbsent) {
    return AssignmentTableCompanion(
      id: Value(id),
      isDone: Value(isDone),
      date: Value(date),
    );
  }

  factory AssignmentTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AssignmentTableData(
      id: serializer.fromJson<int>(json['id']),
      isDone: serializer.fromJson<bool>(json['isDone']),
      date: serializer.fromJson<String>(json['date']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'isDone': serializer.toJson<bool>(isDone),
      'date': serializer.toJson<String>(date),
    };
  }

  AssignmentTableData copyWith({int? id, bool? isDone, String? date}) =>
      AssignmentTableData(
        id: id ?? this.id,
        isDone: isDone ?? this.isDone,
        date: date ?? this.date,
      );
  AssignmentTableData copyWithCompanion(AssignmentTableCompanion data) {
    return AssignmentTableData(
      id: data.id.present ? data.id.value : this.id,
      isDone: data.isDone.present ? data.isDone.value : this.isDone,
      date: data.date.present ? data.date.value : this.date,
    );
  }

  @override
  String toString() {
    return (StringBuffer('AssignmentTableData(')
          ..write('id: $id, ')
          ..write('isDone: $isDone, ')
          ..write('date: $date')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, isDone, date);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AssignmentTableData &&
          other.id == this.id &&
          other.isDone == this.isDone &&
          other.date == this.date);
}

class AssignmentTableCompanion extends UpdateCompanion<AssignmentTableData> {
  final Value<int> id;
  final Value<bool> isDone;
  final Value<String> date;
  const AssignmentTableCompanion({
    this.id = const Value.absent(),
    this.isDone = const Value.absent(),
    this.date = const Value.absent(),
  });
  AssignmentTableCompanion.insert({
    this.id = const Value.absent(),
    required bool isDone,
    required String date,
  }) : isDone = Value(isDone),
       date = Value(date);
  static Insertable<AssignmentTableData> custom({
    Expression<int>? id,
    Expression<bool>? isDone,
    Expression<String>? date,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (isDone != null) 'is_done': isDone,
      if (date != null) 'date': date,
    });
  }

  AssignmentTableCompanion copyWith({
    Value<int>? id,
    Value<bool>? isDone,
    Value<String>? date,
  }) {
    return AssignmentTableCompanion(
      id: id ?? this.id,
      isDone: isDone ?? this.isDone,
      date: date ?? this.date,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (isDone.present) {
      map['is_done'] = Variable<bool>(isDone.value);
    }
    if (date.present) {
      map['date'] = Variable<String>(date.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AssignmentTableCompanion(')
          ..write('id: $id, ')
          ..write('isDone: $isDone, ')
          ..write('date: $date')
          ..write(')'))
        .toString();
  }
}

class $ExamTableTable extends ExamTable
    with TableInfo<$ExamTableTable, ExamTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ExamTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _studentMarkMeta = const VerificationMeta(
    'studentMark',
  );
  @override
  late final GeneratedColumn<int> studentMark = GeneratedColumn<int>(
    'student_mark',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<String> date = GeneratedColumn<String>(
    'date',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, studentMark, date];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'exam_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<ExamTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('student_mark')) {
      context.handle(
        _studentMarkMeta,
        studentMark.isAcceptableOrUnknown(
          data['student_mark']!,
          _studentMarkMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_studentMarkMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
        _dateMeta,
        date.isAcceptableOrUnknown(data['date']!, _dateMeta),
      );
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ExamTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ExamTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      studentMark: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}student_mark'],
      )!,
      date: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}date'],
      )!,
    );
  }

  @override
  $ExamTableTable createAlias(String alias) {
    return $ExamTableTable(attachedDatabase, alias);
  }
}

class ExamTableData extends DataClass implements Insertable<ExamTableData> {
  final int id;
  final int studentMark;
  final String date;
  const ExamTableData({
    required this.id,
    required this.studentMark,
    required this.date,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['student_mark'] = Variable<int>(studentMark);
    map['date'] = Variable<String>(date);
    return map;
  }

  ExamTableCompanion toCompanion(bool nullToAbsent) {
    return ExamTableCompanion(
      id: Value(id),
      studentMark: Value(studentMark),
      date: Value(date),
    );
  }

  factory ExamTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ExamTableData(
      id: serializer.fromJson<int>(json['id']),
      studentMark: serializer.fromJson<int>(json['studentMark']),
      date: serializer.fromJson<String>(json['date']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'studentMark': serializer.toJson<int>(studentMark),
      'date': serializer.toJson<String>(date),
    };
  }

  ExamTableData copyWith({int? id, int? studentMark, String? date}) =>
      ExamTableData(
        id: id ?? this.id,
        studentMark: studentMark ?? this.studentMark,
        date: date ?? this.date,
      );
  ExamTableData copyWithCompanion(ExamTableCompanion data) {
    return ExamTableData(
      id: data.id.present ? data.id.value : this.id,
      studentMark: data.studentMark.present
          ? data.studentMark.value
          : this.studentMark,
      date: data.date.present ? data.date.value : this.date,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ExamTableData(')
          ..write('id: $id, ')
          ..write('studentMark: $studentMark, ')
          ..write('date: $date')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, studentMark, date);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ExamTableData &&
          other.id == this.id &&
          other.studentMark == this.studentMark &&
          other.date == this.date);
}

class ExamTableCompanion extends UpdateCompanion<ExamTableData> {
  final Value<int> id;
  final Value<int> studentMark;
  final Value<String> date;
  const ExamTableCompanion({
    this.id = const Value.absent(),
    this.studentMark = const Value.absent(),
    this.date = const Value.absent(),
  });
  ExamTableCompanion.insert({
    this.id = const Value.absent(),
    required int studentMark,
    required String date,
  }) : studentMark = Value(studentMark),
       date = Value(date);
  static Insertable<ExamTableData> custom({
    Expression<int>? id,
    Expression<int>? studentMark,
    Expression<String>? date,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (studentMark != null) 'student_mark': studentMark,
      if (date != null) 'date': date,
    });
  }

  ExamTableCompanion copyWith({
    Value<int>? id,
    Value<int>? studentMark,
    Value<String>? date,
  }) {
    return ExamTableCompanion(
      id: id ?? this.id,
      studentMark: studentMark ?? this.studentMark,
      date: date ?? this.date,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (studentMark.present) {
      map['student_mark'] = Variable<int>(studentMark.value);
    }
    if (date.present) {
      map['date'] = Variable<String>(date.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ExamTableCompanion(')
          ..write('id: $id, ')
          ..write('studentMark: $studentMark, ')
          ..write('date: $date')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $ClassTableTable classTable = $ClassTableTable(this);
  late final $StudentTableTable studentTable = $StudentTableTable(this);
  late final $LessonsTableTable lessonsTable = $LessonsTableTable(this);
  late final $AssignmentTableTable assignmentTable = $AssignmentTableTable(
    this,
  );
  late final $ExamTableTable examTable = $ExamTableTable(this);
  late final AcademicDao academicDao = AcademicDao(this as AppDatabase);
  late final AssessmentDao assessmentDao = AssessmentDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    classTable,
    studentTable,
    lessonsTable,
    assignmentTable,
    examTable,
  ];
  @override
  StreamQueryUpdateRules get streamUpdateRules => const StreamQueryUpdateRules([
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'class_table',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('student_table', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'class_table',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('lessons_table', kind: UpdateKind.delete)],
    ),
  ]);
}

typedef $$ClassTableTableCreateCompanionBuilder =
    ClassTableCompanion Function({
      Value<int> id,
      required String name,
      required int salaryPerStudent,
      required String time,
      required String date,
      required String whatsAppGroup,
    });
typedef $$ClassTableTableUpdateCompanionBuilder =
    ClassTableCompanion Function({
      Value<int> id,
      Value<String> name,
      Value<int> salaryPerStudent,
      Value<String> time,
      Value<String> date,
      Value<String> whatsAppGroup,
    });

final class $$ClassTableTableReferences
    extends BaseReferences<_$AppDatabase, $ClassTableTable, ClassTableData> {
  $$ClassTableTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$StudentTableTable, List<StudentTableData>>
  _studentTableRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.studentTable,
    aliasName: 'class_table__id__student_table__class_id',
  );

  $$StudentTableTableProcessedTableManager get studentTableRefs {
    final manager = $$StudentTableTableTableManager(
      $_db,
      $_db.studentTable,
    ).filter((f) => f.classId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_studentTableRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$LessonsTableTable, List<LessonsTableData>>
  _lessonsTableRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.lessonsTable,
    aliasName: 'class_table__id__lessons_table__class_id',
  );

  $$LessonsTableTableProcessedTableManager get lessonsTableRefs {
    final manager = $$LessonsTableTableTableManager(
      $_db,
      $_db.lessonsTable,
    ).filter((f) => f.classId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_lessonsTableRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$ClassTableTableFilterComposer
    extends Composer<_$AppDatabase, $ClassTableTable> {
  $$ClassTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get salaryPerStudent => $composableBuilder(
    column: $table.salaryPerStudent,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get time => $composableBuilder(
    column: $table.time,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get whatsAppGroup => $composableBuilder(
    column: $table.whatsAppGroup,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> studentTableRefs(
    Expression<bool> Function($$StudentTableTableFilterComposer f) f,
  ) {
    final $$StudentTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.studentTable,
      getReferencedColumn: (t) => t.classId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$StudentTableTableFilterComposer(
            $db: $db,
            $table: $db.studentTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> lessonsTableRefs(
    Expression<bool> Function($$LessonsTableTableFilterComposer f) f,
  ) {
    final $$LessonsTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.lessonsTable,
      getReferencedColumn: (t) => t.classId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$LessonsTableTableFilterComposer(
            $db: $db,
            $table: $db.lessonsTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ClassTableTableOrderingComposer
    extends Composer<_$AppDatabase, $ClassTableTable> {
  $$ClassTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get salaryPerStudent => $composableBuilder(
    column: $table.salaryPerStudent,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get time => $composableBuilder(
    column: $table.time,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get whatsAppGroup => $composableBuilder(
    column: $table.whatsAppGroup,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ClassTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $ClassTableTable> {
  $$ClassTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<int> get salaryPerStudent => $composableBuilder(
    column: $table.salaryPerStudent,
    builder: (column) => column,
  );

  GeneratedColumn<String> get time =>
      $composableBuilder(column: $table.time, builder: (column) => column);

  GeneratedColumn<String> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);

  GeneratedColumn<String> get whatsAppGroup => $composableBuilder(
    column: $table.whatsAppGroup,
    builder: (column) => column,
  );

  Expression<T> studentTableRefs<T extends Object>(
    Expression<T> Function($$StudentTableTableAnnotationComposer a) f,
  ) {
    final $$StudentTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.studentTable,
      getReferencedColumn: (t) => t.classId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$StudentTableTableAnnotationComposer(
            $db: $db,
            $table: $db.studentTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> lessonsTableRefs<T extends Object>(
    Expression<T> Function($$LessonsTableTableAnnotationComposer a) f,
  ) {
    final $$LessonsTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.lessonsTable,
      getReferencedColumn: (t) => t.classId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$LessonsTableTableAnnotationComposer(
            $db: $db,
            $table: $db.lessonsTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ClassTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ClassTableTable,
          ClassTableData,
          $$ClassTableTableFilterComposer,
          $$ClassTableTableOrderingComposer,
          $$ClassTableTableAnnotationComposer,
          $$ClassTableTableCreateCompanionBuilder,
          $$ClassTableTableUpdateCompanionBuilder,
          (ClassTableData, $$ClassTableTableReferences),
          ClassTableData,
          PrefetchHooks Function({bool studentTableRefs, bool lessonsTableRefs})
        > {
  $$ClassTableTableTableManager(_$AppDatabase db, $ClassTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ClassTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ClassTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ClassTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<int> salaryPerStudent = const Value.absent(),
                Value<String> time = const Value.absent(),
                Value<String> date = const Value.absent(),
                Value<String> whatsAppGroup = const Value.absent(),
              }) => ClassTableCompanion(
                id: id,
                name: name,
                salaryPerStudent: salaryPerStudent,
                time: time,
                date: date,
                whatsAppGroup: whatsAppGroup,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String name,
                required int salaryPerStudent,
                required String time,
                required String date,
                required String whatsAppGroup,
              }) => ClassTableCompanion.insert(
                id: id,
                name: name,
                salaryPerStudent: salaryPerStudent,
                time: time,
                date: date,
                whatsAppGroup: whatsAppGroup,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$ClassTableTable, ClassTableData>(table),
                  $$ClassTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({studentTableRefs = false, lessonsTableRefs = false}) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (studentTableRefs) db.studentTable,
                    if (lessonsTableRefs) db.lessonsTable,
                  ],
                  addJoins: null,
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (studentTableRefs)
                        await $_getPrefetchedData<
                          ClassTableData,
                          $ClassTableTable,
                          StudentTableData
                        >(
                          currentTable: table,
                          referencedTable: $$ClassTableTableReferences
                              ._studentTableRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$ClassTableTableReferences(
                                db,
                                table,
                                p0,
                              ).studentTableRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.classId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (lessonsTableRefs)
                        await $_getPrefetchedData<
                          ClassTableData,
                          $ClassTableTable,
                          LessonsTableData
                        >(
                          currentTable: table,
                          referencedTable: $$ClassTableTableReferences
                              ._lessonsTableRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$ClassTableTableReferences(
                                db,
                                table,
                                p0,
                              ).lessonsTableRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.classId == item.id,
                              ),
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$ClassTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ClassTableTable,
      ClassTableData,
      $$ClassTableTableFilterComposer,
      $$ClassTableTableOrderingComposer,
      $$ClassTableTableAnnotationComposer,
      $$ClassTableTableCreateCompanionBuilder,
      $$ClassTableTableUpdateCompanionBuilder,
      (ClassTableData, $$ClassTableTableReferences),
      ClassTableData,
      PrefetchHooks Function({bool studentTableRefs, bool lessonsTableRefs})
    >;
typedef $$StudentTableTableCreateCompanionBuilder =
    StudentTableCompanion Function({
      Value<int> id,
      required String name,
      required String phoneNumber,
      required String address,
      required String gender,
      required String parentPhoneNumber,
      required bool isPaid,
      Value<int?> classId,
    });
typedef $$StudentTableTableUpdateCompanionBuilder =
    StudentTableCompanion Function({
      Value<int> id,
      Value<String> name,
      Value<String> phoneNumber,
      Value<String> address,
      Value<String> gender,
      Value<String> parentPhoneNumber,
      Value<bool> isPaid,
      Value<int?> classId,
    });

final class $$StudentTableTableReferences
    extends
        BaseReferences<_$AppDatabase, $StudentTableTable, StudentTableData> {
  $$StudentTableTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $ClassTableTable _classIdTable(_$AppDatabase db) =>
      db.classTable.createAlias('student_table__class_id__class_table__id');

  $$ClassTableTableProcessedTableManager? get classId {
    final $_column = $_itemColumn<int>('class_id');
    if ($_column == null) return null;
    final manager = $$ClassTableTableTableManager(
      $_db,
      $_db.classTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_classIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$StudentTableTableFilterComposer
    extends Composer<_$AppDatabase, $StudentTableTable> {
  $$StudentTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get phoneNumber => $composableBuilder(
    column: $table.phoneNumber,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get address => $composableBuilder(
    column: $table.address,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get gender => $composableBuilder(
    column: $table.gender,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get parentPhoneNumber => $composableBuilder(
    column: $table.parentPhoneNumber,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isPaid => $composableBuilder(
    column: $table.isPaid,
    builder: (column) => ColumnFilters(column),
  );

  $$ClassTableTableFilterComposer get classId {
    final $$ClassTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.classId,
      referencedTable: $db.classTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ClassTableTableFilterComposer(
            $db: $db,
            $table: $db.classTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$StudentTableTableOrderingComposer
    extends Composer<_$AppDatabase, $StudentTableTable> {
  $$StudentTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get phoneNumber => $composableBuilder(
    column: $table.phoneNumber,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get address => $composableBuilder(
    column: $table.address,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get gender => $composableBuilder(
    column: $table.gender,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get parentPhoneNumber => $composableBuilder(
    column: $table.parentPhoneNumber,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isPaid => $composableBuilder(
    column: $table.isPaid,
    builder: (column) => ColumnOrderings(column),
  );

  $$ClassTableTableOrderingComposer get classId {
    final $$ClassTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.classId,
      referencedTable: $db.classTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ClassTableTableOrderingComposer(
            $db: $db,
            $table: $db.classTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$StudentTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $StudentTableTable> {
  $$StudentTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get phoneNumber => $composableBuilder(
    column: $table.phoneNumber,
    builder: (column) => column,
  );

  GeneratedColumn<String> get address =>
      $composableBuilder(column: $table.address, builder: (column) => column);

  GeneratedColumn<String> get gender =>
      $composableBuilder(column: $table.gender, builder: (column) => column);

  GeneratedColumn<String> get parentPhoneNumber => $composableBuilder(
    column: $table.parentPhoneNumber,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isPaid =>
      $composableBuilder(column: $table.isPaid, builder: (column) => column);

  $$ClassTableTableAnnotationComposer get classId {
    final $$ClassTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.classId,
      referencedTable: $db.classTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ClassTableTableAnnotationComposer(
            $db: $db,
            $table: $db.classTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$StudentTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $StudentTableTable,
          StudentTableData,
          $$StudentTableTableFilterComposer,
          $$StudentTableTableOrderingComposer,
          $$StudentTableTableAnnotationComposer,
          $$StudentTableTableCreateCompanionBuilder,
          $$StudentTableTableUpdateCompanionBuilder,
          (StudentTableData, $$StudentTableTableReferences),
          StudentTableData,
          PrefetchHooks Function({bool classId})
        > {
  $$StudentTableTableTableManager(_$AppDatabase db, $StudentTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$StudentTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$StudentTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$StudentTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> phoneNumber = const Value.absent(),
                Value<String> address = const Value.absent(),
                Value<String> gender = const Value.absent(),
                Value<String> parentPhoneNumber = const Value.absent(),
                Value<bool> isPaid = const Value.absent(),
                Value<int?> classId = const Value.absent(),
              }) => StudentTableCompanion(
                id: id,
                name: name,
                phoneNumber: phoneNumber,
                address: address,
                gender: gender,
                parentPhoneNumber: parentPhoneNumber,
                isPaid: isPaid,
                classId: classId,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String name,
                required String phoneNumber,
                required String address,
                required String gender,
                required String parentPhoneNumber,
                required bool isPaid,
                Value<int?> classId = const Value.absent(),
              }) => StudentTableCompanion.insert(
                id: id,
                name: name,
                phoneNumber: phoneNumber,
                address: address,
                gender: gender,
                parentPhoneNumber: parentPhoneNumber,
                isPaid: isPaid,
                classId: classId,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$StudentTableTable, StudentTableData>(table),
                  $$StudentTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({classId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (classId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.classId,
                                referencedTable: $$StudentTableTableReferences
                                    ._classIdTable(db),
                                referencedColumn: $$StudentTableTableReferences
                                    ._classIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$StudentTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $StudentTableTable,
      StudentTableData,
      $$StudentTableTableFilterComposer,
      $$StudentTableTableOrderingComposer,
      $$StudentTableTableAnnotationComposer,
      $$StudentTableTableCreateCompanionBuilder,
      $$StudentTableTableUpdateCompanionBuilder,
      (StudentTableData, $$StudentTableTableReferences),
      StudentTableData,
      PrefetchHooks Function({bool classId})
    >;
typedef $$LessonsTableTableCreateCompanionBuilder =
    LessonsTableCompanion Function({
      Value<int> id,
      required String date,
      required bool isPaid,
      required bool isAttended,
      required int classId,
    });
typedef $$LessonsTableTableUpdateCompanionBuilder =
    LessonsTableCompanion Function({
      Value<int> id,
      Value<String> date,
      Value<bool> isPaid,
      Value<bool> isAttended,
      Value<int> classId,
    });

final class $$LessonsTableTableReferences
    extends
        BaseReferences<_$AppDatabase, $LessonsTableTable, LessonsTableData> {
  $$LessonsTableTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $ClassTableTable _classIdTable(_$AppDatabase db) =>
      db.classTable.createAlias('lessons_table__class_id__class_table__id');

  $$ClassTableTableProcessedTableManager get classId {
    final $_column = $_itemColumn<int>('class_id')!;

    final manager = $$ClassTableTableTableManager(
      $_db,
      $_db.classTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_classIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$LessonsTableTableFilterComposer
    extends Composer<_$AppDatabase, $LessonsTableTable> {
  $$LessonsTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isPaid => $composableBuilder(
    column: $table.isPaid,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isAttended => $composableBuilder(
    column: $table.isAttended,
    builder: (column) => ColumnFilters(column),
  );

  $$ClassTableTableFilterComposer get classId {
    final $$ClassTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.classId,
      referencedTable: $db.classTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ClassTableTableFilterComposer(
            $db: $db,
            $table: $db.classTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$LessonsTableTableOrderingComposer
    extends Composer<_$AppDatabase, $LessonsTableTable> {
  $$LessonsTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isPaid => $composableBuilder(
    column: $table.isPaid,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isAttended => $composableBuilder(
    column: $table.isAttended,
    builder: (column) => ColumnOrderings(column),
  );

  $$ClassTableTableOrderingComposer get classId {
    final $$ClassTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.classId,
      referencedTable: $db.classTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ClassTableTableOrderingComposer(
            $db: $db,
            $table: $db.classTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$LessonsTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $LessonsTableTable> {
  $$LessonsTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);

  GeneratedColumn<bool> get isPaid =>
      $composableBuilder(column: $table.isPaid, builder: (column) => column);

  GeneratedColumn<bool> get isAttended => $composableBuilder(
    column: $table.isAttended,
    builder: (column) => column,
  );

  $$ClassTableTableAnnotationComposer get classId {
    final $$ClassTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.classId,
      referencedTable: $db.classTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ClassTableTableAnnotationComposer(
            $db: $db,
            $table: $db.classTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$LessonsTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $LessonsTableTable,
          LessonsTableData,
          $$LessonsTableTableFilterComposer,
          $$LessonsTableTableOrderingComposer,
          $$LessonsTableTableAnnotationComposer,
          $$LessonsTableTableCreateCompanionBuilder,
          $$LessonsTableTableUpdateCompanionBuilder,
          (LessonsTableData, $$LessonsTableTableReferences),
          LessonsTableData,
          PrefetchHooks Function({bool classId})
        > {
  $$LessonsTableTableTableManager(_$AppDatabase db, $LessonsTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$LessonsTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$LessonsTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$LessonsTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> date = const Value.absent(),
                Value<bool> isPaid = const Value.absent(),
                Value<bool> isAttended = const Value.absent(),
                Value<int> classId = const Value.absent(),
              }) => LessonsTableCompanion(
                id: id,
                date: date,
                isPaid: isPaid,
                isAttended: isAttended,
                classId: classId,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String date,
                required bool isPaid,
                required bool isAttended,
                required int classId,
              }) => LessonsTableCompanion.insert(
                id: id,
                date: date,
                isPaid: isPaid,
                isAttended: isAttended,
                classId: classId,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$LessonsTableTable, LessonsTableData>(table),
                  $$LessonsTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({classId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (classId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.classId,
                                referencedTable: $$LessonsTableTableReferences
                                    ._classIdTable(db),
                                referencedColumn: $$LessonsTableTableReferences
                                    ._classIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$LessonsTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $LessonsTableTable,
      LessonsTableData,
      $$LessonsTableTableFilterComposer,
      $$LessonsTableTableOrderingComposer,
      $$LessonsTableTableAnnotationComposer,
      $$LessonsTableTableCreateCompanionBuilder,
      $$LessonsTableTableUpdateCompanionBuilder,
      (LessonsTableData, $$LessonsTableTableReferences),
      LessonsTableData,
      PrefetchHooks Function({bool classId})
    >;
typedef $$AssignmentTableTableCreateCompanionBuilder =
    AssignmentTableCompanion Function({
      Value<int> id,
      required bool isDone,
      required String date,
    });
typedef $$AssignmentTableTableUpdateCompanionBuilder =
    AssignmentTableCompanion Function({
      Value<int> id,
      Value<bool> isDone,
      Value<String> date,
    });

class $$AssignmentTableTableFilterComposer
    extends Composer<_$AppDatabase, $AssignmentTableTable> {
  $$AssignmentTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isDone => $composableBuilder(
    column: $table.isDone,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnFilters(column),
  );
}

class $$AssignmentTableTableOrderingComposer
    extends Composer<_$AppDatabase, $AssignmentTableTable> {
  $$AssignmentTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isDone => $composableBuilder(
    column: $table.isDone,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$AssignmentTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $AssignmentTableTable> {
  $$AssignmentTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<bool> get isDone =>
      $composableBuilder(column: $table.isDone, builder: (column) => column);

  GeneratedColumn<String> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);
}

class $$AssignmentTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $AssignmentTableTable,
          AssignmentTableData,
          $$AssignmentTableTableFilterComposer,
          $$AssignmentTableTableOrderingComposer,
          $$AssignmentTableTableAnnotationComposer,
          $$AssignmentTableTableCreateCompanionBuilder,
          $$AssignmentTableTableUpdateCompanionBuilder,
          (
            AssignmentTableData,
            BaseReferences<
              _$AppDatabase,
              $AssignmentTableTable,
              AssignmentTableData
            >,
          ),
          AssignmentTableData,
          PrefetchHooks Function()
        > {
  $$AssignmentTableTableTableManager(
    _$AppDatabase db,
    $AssignmentTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AssignmentTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AssignmentTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AssignmentTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<bool> isDone = const Value.absent(),
                Value<String> date = const Value.absent(),
              }) =>
                  AssignmentTableCompanion(id: id, isDone: isDone, date: date),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required bool isDone,
                required String date,
              }) => AssignmentTableCompanion.insert(
                id: id,
                isDone: isDone,
                date: date,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$AssignmentTableTable, AssignmentTableData>(
                    table,
                  ),
                  BaseReferences<
                    _$AppDatabase,
                    $AssignmentTableTable,
                    AssignmentTableData
                  >(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$AssignmentTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $AssignmentTableTable,
      AssignmentTableData,
      $$AssignmentTableTableFilterComposer,
      $$AssignmentTableTableOrderingComposer,
      $$AssignmentTableTableAnnotationComposer,
      $$AssignmentTableTableCreateCompanionBuilder,
      $$AssignmentTableTableUpdateCompanionBuilder,
      (
        AssignmentTableData,
        BaseReferences<
          _$AppDatabase,
          $AssignmentTableTable,
          AssignmentTableData
        >,
      ),
      AssignmentTableData,
      PrefetchHooks Function()
    >;
typedef $$ExamTableTableCreateCompanionBuilder =
    ExamTableCompanion Function({
      Value<int> id,
      required int studentMark,
      required String date,
    });
typedef $$ExamTableTableUpdateCompanionBuilder =
    ExamTableCompanion Function({
      Value<int> id,
      Value<int> studentMark,
      Value<String> date,
    });

class $$ExamTableTableFilterComposer
    extends Composer<_$AppDatabase, $ExamTableTable> {
  $$ExamTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get studentMark => $composableBuilder(
    column: $table.studentMark,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ExamTableTableOrderingComposer
    extends Composer<_$AppDatabase, $ExamTableTable> {
  $$ExamTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get studentMark => $composableBuilder(
    column: $table.studentMark,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ExamTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $ExamTableTable> {
  $$ExamTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get studentMark => $composableBuilder(
    column: $table.studentMark,
    builder: (column) => column,
  );

  GeneratedColumn<String> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);
}

class $$ExamTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ExamTableTable,
          ExamTableData,
          $$ExamTableTableFilterComposer,
          $$ExamTableTableOrderingComposer,
          $$ExamTableTableAnnotationComposer,
          $$ExamTableTableCreateCompanionBuilder,
          $$ExamTableTableUpdateCompanionBuilder,
          (
            ExamTableData,
            BaseReferences<_$AppDatabase, $ExamTableTable, ExamTableData>,
          ),
          ExamTableData,
          PrefetchHooks Function()
        > {
  $$ExamTableTableTableManager(_$AppDatabase db, $ExamTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ExamTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ExamTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ExamTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> studentMark = const Value.absent(),
                Value<String> date = const Value.absent(),
              }) => ExamTableCompanion(
                id: id,
                studentMark: studentMark,
                date: date,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int studentMark,
                required String date,
              }) => ExamTableCompanion.insert(
                id: id,
                studentMark: studentMark,
                date: date,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$ExamTableTable, ExamTableData>(table),
                  BaseReferences<_$AppDatabase, $ExamTableTable, ExamTableData>(
                    db,
                    table,
                    e,
                  ),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$ExamTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ExamTableTable,
      ExamTableData,
      $$ExamTableTableFilterComposer,
      $$ExamTableTableOrderingComposer,
      $$ExamTableTableAnnotationComposer,
      $$ExamTableTableCreateCompanionBuilder,
      $$ExamTableTableUpdateCompanionBuilder,
      (
        ExamTableData,
        BaseReferences<_$AppDatabase, $ExamTableTable, ExamTableData>,
      ),
      ExamTableData,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$ClassTableTableTableManager get classTable =>
      $$ClassTableTableTableManager(_db, _db.classTable);
  $$StudentTableTableTableManager get studentTable =>
      $$StudentTableTableTableManager(_db, _db.studentTable);
  $$LessonsTableTableTableManager get lessonsTable =>
      $$LessonsTableTableTableManager(_db, _db.lessonsTable);
  $$AssignmentTableTableTableManager get assignmentTable =>
      $$AssignmentTableTableTableManager(_db, _db.assignmentTable);
  $$ExamTableTableTableManager get examTable =>
      $$ExamTableTableTableManager(_db, _db.examTable);
}
