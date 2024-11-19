(E)ER Diagram for youtube video streaming
-----------------------------------------

Assumptions made are as follows:
--------------------------------
1. USER entity is subdivided into 2 subtypes of total overlapping constraint namely CREATOR and CONSUMER, meaning the creator can be a consumer and vice versa.
U_IS_CREATOR and U_IS_CONSUMER attributes cannot be null as those are subtype discriminators of total overlapping constraints.
USER_ID is unique in the table and hence is the primary key.

2. CREATOR and CONSUMER inherits the primary key of supertype USER and hence are declared as a Foreign key in its entities respectively.
PROFIT_EARNED attribute in a CREATOR is an optional entity hence is not in bold format.

3. CREATOR creates one or more channels and one CHANNEL is created by only one CREATOR. CHANNEL has its own unique CHANNEL_ID which is used as the primary key. CHANNEL is existent dependent on CREATOR, meaning the channel exists only if CREATOR exists, we include the primary key of CREATOR in the CHANNEL entity but it is not the primary key as channels can be uniquely identified by its own channel_ID. Hence there exists a weak relationship between them.

4. SUBSCRIPTION is a bridge or composite entity which connects CONSUMER and CHANNEL. Hence the primary key of SUBSCRIPTION is the combination of the primary keys of CHANNEL and CONSUMER. SUBSCRIPTION_TYPE is an attribute to differentiate whether the subscription is paid or free type.

5. CHANNEL uploads VIDEO. VIDEO is existent dependent on CHANNEL, hence contains CHANNEL primary key as a foreign key in it. Since it is not the primary key the relationship is considered weak and shown via a dotted line.

6. VIDEO entity has VIDEO_ID as its primary key and can be further subdivided into INFORMATIONAL or ENTERTAINMENT subtypes with disjoint and partial constraints. Partial constraint because it can have other subtypes. Disjoint because the two subtypes are unique and would not overlap. Subtype discriminator which is VIDEO_TYPE, if it contains "I", then it belongs to the INFORMATIONAL entity and if it contains "E", then it belongs to ENTERTAINMENT. These values can be null. INFORMATIONAL videos are identified by keywords and ENTERTAINMENT videos are identified by tags. Hence those are the required attributes respectively.

7. VIDEO can be sponsored by zero or more THIRD_PARTY_SPONSOR. The relationship between them is weak as the primary key of VIDEO is not the primary key of THIRD_PARTY_SPONSOR but is a foreign key in THIRD_PARTY_SPONSOR.

8. METADATA, STATISTIC, and COMMENT exist only if VIDEO exists. And since the primary key of VIDEO is also partially or completely the primary key of these entities; METADATA, STATISTIC, and COMMENT can be considered weak entities with strong relationships with VIDEO entities.

9. In the COMMENT entity, VIDEO_ID is a foreign key and also the partial primary key. VIDEO_ID alone cannot provide us with the exact comment, hence we require a combination of VIDEO_ID and COMMENT_ID as the primary key. That is because one video can have multiple comments. 

10. All the required attributes are mentioned in bold format.

The components of ERM are as follows:
-------------------------------------

ENTITY			RELATIONSHIP	CONNECTIVITY	ENTITY
---------------------------------------------------------------
CREATOR			Creates		1:M		CHANNEL
CONSUMER		Subscribes	1:M		SUBSCRIPTION
CHANNEL			Uploads		1:M		VIDEO
CHANNEL			Provides	1:M		SUBSCRIPTION
METADATA		Has details of	1:M		VIDEO
VIDEO			Generates	1:M		STATISTIC		
VIDEO			Is sponsored by	1:M		THIRD_PARTY_SPONSOR	
VIDEO			Has		1:M		COMMENT			

Note 1: SUBSCRIPTION is the composite entity that implements the M:N relationship "CONSUMER subscribes to CHANNEL"
Note 2: The reverse relationship holds good in the above-mentioned table. Example: CHANNEL is created by CREATOR.



