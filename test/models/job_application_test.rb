require "test_helper"

class JobApplicationTest < ActiveSupport::TestCase
  test "should not save application without company" do
    job_application = JobApplication.new(role_title: "Engineer", status: "applied")
    assert_not job_application.save
  end

  test "should not save application with invalid status" do
    job_application = JobApplication.new(company: "Vista", role_title: "Engineer", status: "banana")
    assert_not job_application.save
  end

  test "should save a valid application" do
    job_application = JobApplication.new(company: "Vista", role_title: "Engineer", status: "applied")
    assert job_application.save
  end
end