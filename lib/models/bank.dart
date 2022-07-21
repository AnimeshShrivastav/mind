class Bank
{
	String bank='None';
	String id='xyz';
	String pwd='pqr';

	Model(this.bank,this.id,this.pwd);

	dynamic toMap()
	{
		return 	{
				'bank':bank,
				'id':id,
				'pwd':pwd,
			};
	}
}