public with sharing class Handler {
    @future
    public static void forperset(Set<Id> userIds)
{

	PermissionSet perms=[SELECT Id,Name FROM PermissionSet WHERE Name='Marketing_User_Permission' LIMIT 1 ];
	List<PermissionSetAssignment> newpermmission = new List<PermissionSetAssignment>();
	for(Id userId:userIds)
		{
            PermissionSetAssignment Pa=new PermissionSetAssignment();
            Pa.PermissionSetId=perms.Id;
            Pa.AssigneeId=userId;
            newpermmission.add(Pa);
		}
		if(newpermmission != null)
		{
			insert newpermmission;
		}
  }

}
}
