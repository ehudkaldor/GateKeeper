package models

import com.github.aselab.activerecord._
import com.github.aselab.activerecord.dsl._
import basic.Credentials


object Tables extends ActiveRecordTables with PlaySupport{
  val credentials = table[Credentials]
}