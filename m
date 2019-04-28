Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92B47B5BE
	for <lists+linux-rockchip@lfdr.de>; Sun, 28 Apr 2019 11:09:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6aa5LLmsm+Zrm5wu8boixRR6jKosQUIisjgX+AjWP0E=; b=WYEiYZ5u3ZNO1R
	+RTpRN+DaDr8b1PK+R7Ht+r4vJy6eDIC/KwlYMIxEUlL8oCE+mGtauw5AnzFASlhPIjyj0WJHA66I
	NvdPdMrcv/1Ra0qxH6eVGxUj5kL/e+T8R2e95WvRJTDWmN1dS1Mccb7EpKDyT1Nbg5lzQfCUs6v76
	9xAR3aWNuLubIWlGTbbpz8XcABrqWQ82qeZxySdRGRC0xQpO8YpQrF/AkDI7ANEtbF0whoFz+6r4b
	PZg8NdULcmzI/pplMSOfV27wPfqSBolDEMyXcb47JqsQpD+k6P5f5UtHZHe5uQq040boLJwGYlT3j
	uRZfthR5NLXMdEW4YUPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKfoi-0000xH-QJ; Sun, 28 Apr 2019 09:09:48 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKfof-0000w5-A4
 for linux-rockchip@lists.infradead.org; Sun, 28 Apr 2019 09:09:46 +0000
Received: by mail-pg1-x542.google.com with SMTP id z16so3693133pgv.11
 for <linux-rockchip@lists.infradead.org>; Sun, 28 Apr 2019 02:09:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ksp0RJAO0k4pfRprgoggQ+F3/fOSrjeMTlEOTKA44MY=;
 b=PYlanwSaPXOB/LraCejmiQi3WIv28GKmrh1BXgIqi2L5xlROeSlxSB5nY0Xab7PRLz
 QrgXBbiqvL9DCg+VKj3x9IuvjhBCUTDclNePCFKkT0XAiDacMIo/gxht969D6L/GqIbI
 EATuCok56CrQUgqFR0WuFpKmRyPTAR4POU/Tg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ksp0RJAO0k4pfRprgoggQ+F3/fOSrjeMTlEOTKA44MY=;
 b=N2jhGBZv7Om3/A1K0L0I2R74h6WIiOG973AKO/ErdJHCOnnZvird/OZL2hhFeekoCz
 i2CYf8haT3+0tCdOOlQR6A7siLkrAISljTKa2zlHJiXtUPYSUWeBHDwqebxH7n+Llt+H
 B2ZNT21UnfgfTTYz0th+F7SXL7tgBtIhSjK/lftNcPKH5Ox/BJv+cyIrkXTF2RtidCFW
 prAV32PqYpiCy06B0rHX7vDLxd1t/NprKoI0qvrnd7ef5AfmHdiTPdwKZ4Jbyx8C5Y8a
 afY/5rWVaMFrecNfIb3hlV3ZoGEjXf0zzrVsztOvyUA0MjhHodUkaYAuuf1ZfVJCs+Pd
 t59w==
X-Gm-Message-State: APjAAAWs7Vuaqnoh1DM+Glg+TW/FC4g/4hH4YsjFQ3iE3LbnQ9/OJADd
 4YwSxa87RB0FBhVC8HvDqKRFyQ==
X-Google-Smtp-Source: APXvYqw2J9p/mzfctB7/jaFBSOrpJ0WJqsw704s9YdG66TOz9bAF+If2uidFb9+/Q38fVAKGNSVcgQ==
X-Received: by 2002:a63:e004:: with SMTP id e4mr53483625pgh.344.1556442584814; 
 Sun, 28 Apr 2019 02:09:44 -0700 (PDT)
Received: from localhost.localdomain ([115.97.185.144])
 by smtp.gmail.com with ESMTPSA id k7sm3040338pfk.93.2019.04.28.02.09.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 28 Apr 2019 02:09:44 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, Akash Gajjar <akash@openedev.com>,
 Tom Rini <trini@konsulko.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2 4/9] rockchip: rk3399: Get bl31.elf via BL31
Date: Sun, 28 Apr 2019 14:39:08 +0530
Message-Id: <20190428090913.10568-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190428090913.10568-1-jagan@amarulasolutions.com>
References: <20190428090913.10568-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_020945_347263_CC21669E 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Emmanuel Vadot <manu@bidouilliste.com>, u-boot@lists.denx.de,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Jagan Teki <jagan@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Right now rockchip platform need to copy bl31.elf into u-boot
source directory to make use of building u-boot.itb.

So, add environment variable BL31 like Allwinner SoC so-that the
bl31.elf would available via BL31.

If the builds are not exporting BL31 env, the make_fit_atf.py
explicitly create dummy bl31.elf in u-boot root directory to
satisfy travis builds and it will show the warning on console as

 WARNING: BL31 file bl31.elf NOT found, resulting binary is non-functional
 WARNING: Please read Building section in doc/README.rockchip

Note, that the dummy bl31 files were created during not exporting
BL31 case would be removed via clean target in Makefile.

Cc: Emmanuel Vadot <manu@bidouilliste.com> <manu@freebsd.org>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 Makefile                               |  2 +-
 arch/arm/mach-rockchip/make_fit_atf.py | 11 ++++++++++-
 doc/README.rockchip                    |  4 ++--
 3 files changed, 13 insertions(+), 4 deletions(-)

diff --git a/Makefile b/Makefile
index ba0cce9f33..2471340c71 100644
--- a/Makefile
+++ b/Makefile
@@ -1782,7 +1782,7 @@ clean: $(clean-dirs)
 		-o -name 'dsdt.aml' -o -name 'dsdt.asl.tmp' -o -name 'dsdt.c' \
 		-o -name '*.efi' -o -name '*.gcno' -o -name '*.so' \) \
 		-type f -print | xargs rm -f \
-		bl31_*.bin image.map
+		bl31.c bl31.elf bl31_*.bin image.map
 
 # mrproper - Delete all generated files, including .config
 #
diff --git a/arch/arm/mach-rockchip/make_fit_atf.py b/arch/arm/mach-rockchip/make_fit_atf.py
index d1faff1957..327875d87b 100755
--- a/arch/arm/mach-rockchip/make_fit_atf.py
+++ b/arch/arm/mach-rockchip/make_fit_atf.py
@@ -10,6 +10,7 @@ usage: $0 <dt_name> [<dt_name> [<dt_name] ...]
 import os
 import sys
 import getopt
+import logging
 
 # pip install pyelftools
 from elftools.elf.elffile import ELFFile
@@ -194,8 +195,16 @@ def get_bl31_segments_info(bl31_file_name):
 
 def main():
     uboot_elf="./u-boot"
-    bl31_elf="./bl31.elf"
     FIT_ITS=sys.stdout
+    if "BL31" in os.environ:
+        bl31_elf=os.getenv("BL31");
+    else:
+        os.system("echo 'int main(){}' > bl31.c")
+        os.system("${CROSS_COMPILE}gcc -c bl31.c -o bl31.elf")
+        bl31_elf="./bl31.elf"
+        logging.basicConfig(format='%(levelname)s:%(message)s', level=logging.DEBUG)
+        logging.warning(' BL31 file bl31.elf NOT found, resulting binary is non-functional')
+        logging.warning(' Please read Building section in doc/README.rockchip')
 
     opts, args = getopt.getopt(sys.argv[1:], "o:u:b:h")
     for opt, val in opts:
diff --git a/doc/README.rockchip b/doc/README.rockchip
index ca4d6473b0..98a3824e2c 100644
--- a/doc/README.rockchip
+++ b/doc/README.rockchip
@@ -149,8 +149,8 @@ For example:
 	=> make realclean
 	=> make CROSS_COMPILE=aarch64-linux-gnu- PLAT=rk3399
 
-	(copy bl31.elf into U-Boot root dir)
-	=> cp build/rk3399/release/bl31/bl31.elf /path/to/u-boot
+	(export bl31.elf)
+	=> export BL31=/path/to/arm-trusted-firmware/build/rk3399/release/bl31/bl31.elf
 
    - Compile PMU M0 firmware
 
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
