package models.basic

import com.github.aselab.activerecord.{ActiveRecord, Timestamps, Datestamps, ActiveRecordCompanion}

abstract class Credentials(
  override val id: Long = 0    
) extends ActiveRecord with Timestamps with Datestamps {

}

object Credentials extends ActiveRecordCompanion[Credentials] {
}

case class UserCredentials(
      
) extends Credentials

object UserCredentials extends ActiveRecordCompanion[UserCredentials] {
}

case class CertCredentials(
      
) extends Credentials

object CertCredentials extends ActiveRecordCompanion[CertCredentials] {
}
