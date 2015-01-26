package models.basic

import com.github.aselab.activerecord.{ActiveRecord, Timestamps, Datestamps, ActiveRecordCompanion}

case class Credentials(
  val username: String,
  override val id: Long = 0    
) extends ActiveRecord with Timestamps with Datestamps {

}

object Credentials extends ActiveRecordCompanion[Credentials] {
}

//case class UserCredentials(
//  override val id: Long = 0    
//) extends Credentials
//
//object UserCredentials extends ActiveRecordCompanion[UserCredentials] {
//}
//
//case class CertCredentials(
//  override val id: Long = 0    
//) extends Credentials
//
//object CertCredentials extends ActiveRecordCompanion[CertCredentials] {
//}
