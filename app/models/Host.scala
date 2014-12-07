package models

import com.github.aselab.activerecord.{ActiveRecord, Timestamps, Datestamps, ActiveRecordCompanion}
import models.basic.Credentials

case class Host(
  val ip: String,
  val credentials: Credentials,
  override val id: Long = 0    
) extends ActiveRecord with Timestamps with Datestamps {

}

object Host extends ActiveRecordCompanion[Host] {
}