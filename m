Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4A4F4CC72
	for <lists+linux-rockchip@lfdr.de>; Thu, 20 Jun 2019 12:59:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HTE/1Aoq1a8yq6vqyGsDImqDm1/iiDORBwdEdWSJLpE=; b=Qk8pi7B3NeXinf
	TIkmwIABeJrGdeHoW+mA7fHdb2HsNfY/NCawCvDDL2d4xGV9DOu7RdiQPHr9f+rJ0LCKZiCczvZw/
	C2YLW9JKkwN9Ymg248Dm35gkEKjTBlMAvnI/Cinpbe5uFlr13nJTzPryzbhzmXr8iiiDSbNvpghmh
	wwe/Abfa8/Zdrczuz2jbk5ySyzTgfVwMrmlYGTXfmbf2A/18wb9AFV4/u8mNbQtWBU8M78w3t2Gg6
	24OCElF9Km/zEwghJW6X1l/tGG0kR1JTXQnrSUmbrDJJLTVk91WsxTHiFODxbiu/FKfFjN1QfDogF
	ohSCn+KlOGZW33HbRGzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdun6-0000hq-N5; Thu, 20 Jun 2019 10:59:40 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdun2-0000hW-1F
 for linux-rockchip@lists.infradead.org; Thu, 20 Jun 2019 10:59:37 +0000
Received: by mail-pf1-x443.google.com with SMTP id 19so1469740pfa.4
 for <linux-rockchip@lists.infradead.org>; Thu, 20 Jun 2019 03:59:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VTYVwBjgCKNY/FlJSycuMhAtBvrPKNheYq1n4TGKvPs=;
 b=MYt/ZFt/JgMf/ATRwzinwAG8Ey1it8gB2Brt44SNBAsD9v0tDt41QzKp4UahFTd9qt
 zg+AgevEDVRg8phOrjQYtPcUe3fIp+41vnpuVx1thfIeYb+WfnjwV4ab4rK3ufM80RVp
 zPfNVJ9UO6yv4qEn9RhOUt+pVP4KY58kOmrBE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VTYVwBjgCKNY/FlJSycuMhAtBvrPKNheYq1n4TGKvPs=;
 b=a5Jpk16De7Tc7emdJ3VPpyNh34mpoa1Lj0XevVepI91/nlXsz4yVUw+ndTjug5rncg
 oeMIh8zMocqWYzpOKzMGWml70tK3SvtUJZqaNsaYBnJkh+ZAn0W2QmsGgED+W8AGOzAl
 vc9sGhOpbocragIEvMqr1ZeHTZvilXy33KU049ujxkWtCdYsDQVc+zakTqZrpqG7FKlc
 Ls4mWWvnszy5RwkiLIJLJrrIDJhfbIswfxQyw4mDTfr9tdEC7yLiH1ZR8RJ0YYu6+IaR
 aBoINwz7JYvfMJTveNHdH1VORViXSwd7r5yq5U0HPpnR8LHelNRUmWIzmZX7/UT1aPlD
 31RQ==
X-Gm-Message-State: APjAAAVWvIGUShNH2x52Jho08yp1srdv2R/Q6yfyW+SkmuODHycN5c1D
 i2XmdIFwzQ9dkPHzAsUZsW7L1A==
X-Google-Smtp-Source: APXvYqwyv4p8EdoQU2Qg8ZYyxJnUjSpqhetbQ/hDzmNw6y6goSdEWENifX0ToJMNdFdODpZsoAc8Sg==
X-Received: by 2002:a63:8d4c:: with SMTP id z73mr6426521pgd.95.1561028375258; 
 Thu, 20 Jun 2019 03:59:35 -0700 (PDT)
Received: from localhost.localdomain ([183.82.229.140])
 by smtp.gmail.com with ESMTPSA id r15sm31306524pfc.162.2019.06.20.03.59.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 20 Jun 2019 03:59:34 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, u-boot@lists.denx.de
Subject: [PATCH v4.1 4/6] rockchip: rk3399: Get bl31.elf via BL31
Date: Thu, 20 Jun 2019 16:29:22 +0530
Message-Id: <20190620105922.484-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_035936_590056_507BBCB2 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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
Changes for v4.1:
- Check BL31 env first instead of bl31.elf PWD.

 Makefile                               |  2 +-
 arch/arm/mach-rockchip/make_fit_atf.py | 19 +++++++++++++++++--
 doc/README.rockchip                    |  4 ++--
 3 files changed, 20 insertions(+), 5 deletions(-)

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
index 212bd0a854..45ec105887 100755
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
@@ -171,8 +176,18 @@ def generate_atf_binary(bl31_file_name):
 
 def main():
     uboot_elf = "./u-boot"
-    bl31_elf = "./bl31.elf"
     fit_its = sys.stdout
+    if "BL31" in os.environ:
+        bl31_elf=os.getenv("BL31");
+    elif os.path.isfile("./bl31.elf"):
+        bl31_elf = "./bl31.elf"
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
