/*:
 [Previous](algorithm)
 # Grading Students
 [https://www.hackerrank.com/challenges/grading/problem](https://www.hackerrank.com/challenges/grading/problem)
 ### Section
 Practice > Algorithm > Implementation
 ### Difficulty
 Easy
 */
func gradingStudents(grades: [Int]) -> [Int] {
  return grades.map { grade in
    guard grade >= 38 else {
      return grade
    }
    let diff = 5 - grade % 5
    return diff < 3 ? grade + diff : grade
  }
}

challenge(gradingStudents)
  .testCase([73, 67, 38, 33])
