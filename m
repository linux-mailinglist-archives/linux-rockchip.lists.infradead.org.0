Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D9424CB91
	for <lists+linux-rockchip@lfdr.de>; Thu, 20 Jun 2019 12:08:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NHylrihPfVKjy3ixSelMmkTQKCdI7PwiItprrCfVhs4=; b=juY7fLMr+BGR0H
	jVLE3A9gFoPPhmTbFZeyJ3WAXzo1k8MJXFKlZ/JQaGp6Opc5/hNAeiXc5ALra11sGJVExWjRzXuve
	0cIwAGA18rlwr7j5m3s9pdEbJVb/FGaPXZL95AQuwKVykR0qp+00q2mM1mH1Aanc7SdAd95IDMcyq
	pIBEE8zNsLcLr2yI/yvqZNnlM0S5XJgbabrtRT5qdmFvv+3tEx80XqJctP7EJVLTGaaDW1babOylo
	2tawFHCzYY9ch0GYzfkvAs+ZnPfJJT97aM/44tzNmDbZBmoMO4MN32qUTsURkryitKFlH27buyIyc
	tIxFr9rOepHk+2fw4z1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdtze-0006aA-68; Thu, 20 Jun 2019 10:08:34 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdtzI-0006JJ-5K
 for linux-rockchip@lists.infradead.org; Thu, 20 Jun 2019 10:08:13 +0000
Received: by mail-pg1-x541.google.com with SMTP id s27so1341115pgl.2
 for <linux-rockchip@lists.infradead.org>; Thu, 20 Jun 2019 03:08:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zttVe370+yU3kJRF5UVZnOomEKxVsOXxlVp69LiFmYw=;
 b=Pdt2lpRs9dO73yg+IMccdvzd0qS8QSTPxjWTBTaLKIFHTeOfe1AHhKjRAkDzOVT0ty
 99H1Fyk3TKkVfnnf9Vl+IxHHmewTc+xj/yCNiFNWCyrtNWf6JECB4TD4Sr0LLzl5dnCh
 xyA74yL4cYw/JUsQg6vjZ4gfx7xthfr18ibr4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zttVe370+yU3kJRF5UVZnOomEKxVsOXxlVp69LiFmYw=;
 b=gi1e4RBvXqiLX3zN6uXwmIsfApGOv8nF806HFfr3I2WXISJ/F0XBt8+LpNu/JrFI2d
 Ca10LCFm+oSdD+yAz03FmfOylOLXwr4fRpSmF8LbJhdraCZITXYUd1XVE9MjFy9sO+pn
 cxjnKRpQDoPfBbvss5kD6RtSqBmunC737Tb549DXze5LuuFYy+5EA/5czSRmW14NtHnP
 euFR4hpjHaHcZJ4XHVRBsaN2rgjvCLtb8F7GLsmZl1XXEdt17RCcTtv/lgdLbUY1Uc+5
 dxeN914qwEDuTCe0mODkzsSN4yLW+cLi3WkK0akW0DFr41Q5YlUhdxGVBSHgiBVntzA7
 josg==
X-Gm-Message-State: APjAAAUF/QORS+MgBjPXzNPmin7FhTJE/MlXejIaKdXawcv84feunqxH
 IFDKJZkssnfrgiJ0E6uYTexcvw==
X-Google-Smtp-Source: APXvYqwIr8ZSNeN+vd61vU4KuKiDPu4PjPjixkEA5o/MU1zN1j/FlWLEcQhkAyybCnP4gExXslE7Ig==
X-Received: by 2002:a62:b40a:: with SMTP id
 h10mr131422396pfn.216.1561025290988; 
 Thu, 20 Jun 2019 03:08:10 -0700 (PDT)
Received: from localhost.localdomain ([183.82.229.140])
 by smtp.gmail.com with ESMTPSA id x129sm21731387pfb.29.2019.06.20.03.08.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 20 Jun 2019 03:08:10 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, u-boot@lists.denx.de
Subject: [PATCH v4 4/6] rockchip: rk3399: Get bl31.elf via BL31
Date: Thu, 20 Jun 2019 15:37:38 +0530
Message-Id: <20190620100740.6560-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190620100740.6560-1-jagan@amarulasolutions.com>
References: <20190620100740.6560-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_030812_220253_8CA0DC93 
X-CRM114-Status: GOOD (  12.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>
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

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 Makefile                               |  2 +-
 arch/arm/mach-rockchip/make_fit_atf.py | 20 ++++++++++++++++++--
 doc/README.rockchip                    |  4 ++--
 3 files changed, 21 insertions(+), 5 deletions(-)

diff --git a/Makefile b/Makefile
index a503ab9fc1..3ede10ff68 100644
--- a/Makefile
+++ b/Makefile
@@ -1848,7 +1848,7 @@ clean: $(clean-dirs)
 		-o -name 'dsdt.aml' -o -name 'dsdt.asl.tmp' -o -name 'dsdt.c' \
 		-o -name '*.efi' -o -name '*.gcno' -o -name '*.so' \) \
 		-type f -print | xargs rm -f \
-		bl31_*.bin image.map
+		bl31.c bl31.elf bl31_*.bin image.map
 
 # mrproper - Delete all generated files, including .config
 #
diff --git a/arch/arm/mach-rockchip/make_fit_atf.py b/arch/arm/mach-rockchip/make_fit_atf.py
index 212bd0a854..e7d3846a13 100755
--- a/arch/arm/mach-rockchip/make_fit_atf.py
+++ b/arch/arm/mach-rockchip/make_fit_atf.py
@@ -12,6 +12,7 @@
 import os
 import sys
 import getopt
+import logging
 
 # pip install pyelftools
 from elftools.elf.elffile import ELFFile
@@ -89,13 +90,17 @@ def append_conf_section(file, cnt, dtname, segments):
     file.write('\t\tconfig_%d {\n' % cnt)
     file.write('\t\t\tdescription = "%s";\n' % dtname)
     file.write('\t\t\tfirmware = "atf_1";\n')
-    file.write('\t\t\tloadables = "uboot",')
+    file.write('\t\t\tloadables = "uboot"')
+    if segments != 0:
+        file.write(',')
     for i in range(1, segments):
         file.write('"atf_%d"' % (i))
         if i != (segments - 1):
             file.write(',')
         else:
             file.write(';\n')
+    if segments == 0:
+        file.write(';\n')
     file.write('\t\t\tfdt = "fdt_1";\n')
     file.write('\t\t};\n')
     file.write('\n')
@@ -171,8 +176,19 @@ def generate_atf_binary(bl31_file_name):
 
 def main():
     uboot_elf = "./u-boot"
-    bl31_elf = "./bl31.elf"
+    bl31_elf = os.path.isfile("./bl31.elf")
     fit_its = sys.stdout
+    if bl31_elf:
+        bl31_elf = "./bl31.elf"
+    elif "BL31" in os.environ:
+        bl31_elf=os.getenv("BL31");
+    else:
+        os.system("echo 'int main(){}' > bl31.c")
+        os.system("${CROSS_COMPILE}gcc -c bl31.c -o bl31.elf")
+        bl31_elf = "./bl31.elf"
+        logging.basicConfig(format='%(levelname)s:%(message)s', level=logging.DEBUG)
+        logging.warning(' BL31 file bl31.elf NOT found, resulting binary is non-functional')
+        logging.warning(' Please read Building section in doc/README.rockchip')
 
     opts, args = getopt.getopt(sys.argv[1:], "o:u:b:h")
     for opt, val in opts:
diff --git a/doc/README.rockchip b/doc/README.rockchip
index 264f7e4994..5680c075fa 100644
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
