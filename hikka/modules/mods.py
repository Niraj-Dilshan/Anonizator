#
# 🔒 The MIT License (MIT)
# 🌐 https://www.gnu.org/licenses/agpl-3.0.html
#
# ---------------------------------------------------------------------------------
# 👾 Module for Adaptator User Bot (based on Hikka 6.0.0)⚠️ Owner @kaio1777 and @yuki_marry
# ---------------------------------------------------------------------------------
# meta developer: @doxny

from .. import loader, utils
import logging
import random

logger = logging.getLogger(__name__)


@loader.tds
class ModsMod(loader.Module):
    """List of all of the modules currently installed"""

    strings = {
        "name": "Mods",
        "amount": "  〔<emoji document_id=5256114207283229740>🔥</emoji>|<emoji document_id=5255806202293533754>🧬</emoji>|<emoji document_id=5256114207283229740>🔥</emoji>〕➢ Ⲙⲟύ ⲅⲟⲥⲡⲟⲇυⲏ #{user_ent.first_name}, ⲏⲁ ⲃⲁⲱⲉⲙ ⲥⳡёⲧⲩ <b>{}</b> ⲙσⲇⲩⲗεύ\n",
        "partial_load": (
            "\n<b>Wait please,"
            " Anonizator is loading...</b>"
        ),
        "module": "〔<emoji document_id=5256114207283229740>🔥</emoji>|<emoji document_id=5255806202293533754>🧬</emoji>|<emoji document_id=5256114207283229740>🔥</emoji>〕➢\n",
        "core_module": "〔<emoji document_id=5256114207283229740>🔥</emoji>|<emoji document_id=5255806202293533754>🧬</emoji>|<emoji document_id=5256114207283229740>🔥</emoji>〕➢\n"
    }

    strings_ru = {
        "amount": "〔<emoji document_id=5256114207283229740>🔥</emoji>|<emoji document_id=5255806202293533754>🧬</emoji>|<emoji document_id=5256114207283229740>🔥</emoji>〕➢ Ⲙⲟύ ⲅⲟⲥⲡⲟⲇυⲏ #{user_ent.first_name}, ⲏⲁ ⲃⲁⲱⲉⲙ ⲥⳡёⲧⲩ <b>{}</b> ⲙσⲇⲩⲗεύ\n",
        "partial_load": (
            "\n<b>Wait Please,"
            " Anonizator is loading...</b>"
        ),
        "cmd": "<i><b><code></code></i></b>\n",
        "module": "〔<emoji document_id=5256114207283229740>🔥</emoji>|<emoji document_id=5255806202293533754>🧬</emoji>|<emoji document_id=5256114207283229740>🔥</emoji>〕➢\n",
        "core_module": "〔<emoji document_id=5256114207283229740>🔥</emoji>|<emoji document_id=5255806202293533754>🧬</emoji>|<emoji document_id=5256114207283229740>🔥</emoji>〕➢\n"
    }
    
    @loader.command(
        ru_doc="Показать все установленные модули"
        )
    async def modscmd(self, message):
        """- List of all of the modules currently installed"""

        prefix = f"{self.strings('cmd').format(str(self.get_prefix()))}\n"
        result = f"{self.strings('amount').format(str(len(self.allmodules.modules)))}\n"

        for mod in self.allmodules.modules:
            try:
                name = mod.strings["name"]
            except KeyError:
                name = mod.__clas__.__name__
            emoji = self.strings("core_module") if mod.__origin__.startswith("<core") else self.strings("module")
            result += f"\n {emoji} <code>{name}</code>"

        result += "" if self.lookup("Loader").fully_loaded else f"\n\n{self.strings('partial_load')}"
        result += f"\n\n {prefix}"
        media_files = ("https://telegra.ph//file/10a4d74336b804f20a4a9.jpg", "https://telegra.ph//file/10a4d74336b804f20a4a9.jpg")
        chat_id = message.chat_id
        if chat_id:
             await self.client.send_file(message.peer_id, random.choice(media_files), caption=result)
             await message.delete()
             
        await utils.answer(message, result, self.strings("loading"))
