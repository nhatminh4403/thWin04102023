create database SinhVien

use SinhVien
go

create table Faculty(
	FacultyID int not null primary key,
	FacultyName nvarchar(255) not null
)

create table Major(
	MajorID int not null,
	FacultyID int not null,
	Name nvarchar(255) not null,
	primary key(MajorID, FacultyID),
	foreign key(FacultyID) references Faculty(FacultyID)
)

create table Student(
	StudentID int not null primary key,
	FullName nvarchar(255) not null,
	AverageScore float not null,
	Avatar nvarchar(255),
	MajorID int,
	FacultyID int,
	foreign key(MajorID,FacultyID) references Major(MajorID,FacultyID),
	foreign key (FacultyID) references Faculty(FacultyID)
)