Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0243E16AB6
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 May 2019 20:53:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=baj6mSPfosJWuYK/CQVHd98g9kWbFOvU9FLcNvSUJmk=; b=W1aBcXov2rtWx1
	gxocvK5vNXxf/KwJ0FzJ8/wQzb4oLgCPZdYQBtEhtz/7dAsLsx6NoX6h6MxoqyOgE9hZZ1OdSSLWj
	XEaDcORVKbfZnQBAPJDGDMhgaAo7oXAYj+SwwU8hxtFGXlmKozFKtLCOKJOchhj21WOtvIhW6DoHy
	90UmppuUjiBJ7MBjzxT7pL2BBvl4BCMAzmsDY+KlbxMdvR9giI4KUT6YSd/uRaVFfz1V9B3llC10T
	lq3NJF3fqb49LucSHEhqS/7XH6eGQnj/Ie8zi8KDn/GDUXkPukN3zik/MMBUts55u3yXQKN8yMf1Q
	KMQkTU2MBuRDW7chz8XA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO5DQ-0005w1-W4; Tue, 07 May 2019 18:53:25 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO5DO-0005tj-7t
 for linux-rockchip@lists.infradead.org; Tue, 07 May 2019 18:53:23 +0000
Received: by mail-pf1-x442.google.com with SMTP id y13so9106799pfm.11
 for <linux-rockchip@lists.infradead.org>; Tue, 07 May 2019 11:53:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ImNKcjJPl5FDOV/JNbJNwcLPUBrNQElhulqr/rR/aLM=;
 b=i6eOFKkZNVK/O0KBDdZ4wwqTB3gINjzvq/mG3X5GrVQ+IXOU3rjb2Vobw5Y9Thys+M
 clx2SNjQsbYUuAEwxKF2gpj5UYHi4tEVaE5klTIgHLyRkvRVnnC4Op6IzNhxfUdqMSou
 7fmeq1lUuUaam9dQ8FM7UdxuaTPA2PNFz4vuw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ImNKcjJPl5FDOV/JNbJNwcLPUBrNQElhulqr/rR/aLM=;
 b=UrrfKlnKpPR28sacZlkzx7XYrOD1klh4+Thu092QlX1V6HV863zgun6Ur376LeXV32
 pt5m35McYlN4hPuJD/SXUBbCiv2Mp7ymWlR3BOCzpud5Smp9kNnwvVwes9YQumVgiaZO
 1AZ+1pEXquGyIeYSEK3JzMqJjIhIijvulHoYUdLtel/yD7zTcYW9++tiUkwWyt4ctf5s
 uCdIuFApi+KNrNq3eVameti7dGznXYeQMUITvPm8PDygKn8QRTJ0W2BMl1P2IobvNaEO
 6qoJw8ry1dp5uJJsQVcUUXNw1/ffQXT0jrhOad7wkB/FrogkhIGIRt1OS6JguN+qrwZ7
 lyKg==
X-Gm-Message-State: APjAAAU73Rbrr9bz6fi3eCR1kpSiMUbbfOeGIi8vQ481zjuUIeLnc83b
 NJA9XNsyp+rMzLvkzF9VHsXsKZFELVA=
X-Google-Smtp-Source: APXvYqyiKFflNDxd/x4+eRXzPz4HfhnTnuN4WH8dqePgoMyjB5If6jE6EHP3arHOy0vMxVsuSBanXA==
X-Received: by 2002:a63:1d1d:: with SMTP id d29mr13318423pgd.63.1557255201725; 
 Tue, 07 May 2019 11:53:21 -0700 (PDT)
Received: from localhost.localdomain ([115.97.185.144])
 by smtp.gmail.com with ESMTPSA id l83sm14668086pfi.150.2019.05.07.11.53.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 11:53:21 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>
Subject: [PATCH v3 4/6] rockchip: rk3399: Get bl31.elf via BL31
Date: Wed,  8 May 2019 00:22:13 +0530
Message-Id: <20190507185215.15441-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190507185215.15441-1-jagan@amarulasolutions.com>
References: <20190507185215.15441-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_115322_425662_B1EA6CE8 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, u-boot@lists.denx.de
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
 arch/arm/mach-rockchip/make_fit_atf.py | 11 ++++++++++-
 doc/README.rockchip                    |  4 ++--
 3 files changed, 13 insertions(+), 4 deletions(-)

diff --git a/Makefile b/Makefile
index 64c7976f7e..c5078b95b7 100644
--- a/Makefile
+++ b/Makefile
@@ -1814,7 +1814,7 @@ clean: $(clean-dirs)
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
