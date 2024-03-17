import 'package:leap/core/resource_manager/asset_path.dart';

class Job {
  Job({
    required this.title,
    required this.skill,
    required this.salary,
    required this.location,
    required this.logo,
  });

  final String title;
  final String skill;
  final String salary;
  final String location;
  final String logo;
}

final List<Job> dummyJobs = [
  Job(
    logo: AssetPath.nike,
    title: 'TeamLead Engineer',
    skill: '.Net Developer',
    salary: '12000 - 15000 EGP',
    location: 'Cairo, Egypt',
  ),
  Job(
    logo: AssetPath.slogan,
    title: 'Senior SW Engineer',
    skill: 'Flutter Developer',
    salary: '12000 - 15000 EGP',
    location: 'Cairo, Egypt',
  ),
  Job(
    logo: AssetPath.illustration,
    title: 'Senior SW Engineer',
    skill: 'React Developer',
    salary: '12000 - 15000 EGP',
    location: 'Cairo, Egypt',
  ),
];
