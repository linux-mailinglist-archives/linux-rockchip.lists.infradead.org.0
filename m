Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D475012CDA9
	for <lists+linux-rockchip@lfdr.de>; Mon, 30 Dec 2019 09:28:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ITqqxXeaionfDbz9WVaulcHPpipFvzOJJbmdpVr5nAg=; b=NpGKpGX9HqJ/3U
	Hc4NUGzeMD0UObojCpSs8c/XdtTpmnclgI9fQOoUdXNHJ9Je/hEb4ZWDVDv1WutbR0lV3Z7myF75y
	JoQ5GOrbFXNzILVVoEQkVHpa6oB5gxczJQUKNzXGSrq32ceskyfAlNxTNNcCYlgSTDS1kvRiICp3y
	qw9meH0JKZFeZBjvOyIYlu1EUpOA2/otzxz9QS3Ym7W1RUuWmje5Bfz/i7uESeLEUt6DvnJO/QwM0
	agJ/ywEtOWNtlFjoDzwdoksNcEjLUeCZmL+P2jjpwBtXKoew83ox4L8EF6Hk62KY4ZWpCQ2+rtXs5
	lNg4O3uD4d/ZX23z9f0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilqPw-0006Rn-EX; Mon, 30 Dec 2019 08:28:48 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilqPp-0006N7-D3
 for linux-rockchip@lists.infradead.org; Mon, 30 Dec 2019 08:28:42 +0000
Received: by mail-pl1-x643.google.com with SMTP id g6so11403666plp.6
 for <linux-rockchip@lists.infradead.org>; Mon, 30 Dec 2019 00:28:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JtUK6y5W/bJkr2xE34zoKJTJmMmJpC6RCrAHlI8mB6k=;
 b=V3RTxdvCGVoA6/4+iJtqlqPcR72VxyNgUCvan1510rTlJ6SPIp4L/o4NRhIDg6JreL
 ZmmZ8+rQ0kb5qqYez1aZxLRnjTFKwDbgXfH/Y8Rk1Di3SYUX0Un8W+8DJJtSpYX+sItZ
 C+ewCORKpd+AVvXl0pOlvndaBOe+D4orZab+M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JtUK6y5W/bJkr2xE34zoKJTJmMmJpC6RCrAHlI8mB6k=;
 b=NpT1D0Q3RoNgMbDLLdaStYhpQQ5ARhF9tmFcKRAUkDgQXMW55A0Pz0uE2iDMO731qD
 PYkdnrZ/BJrNiopJgWK/YxdwBuqQdNXW3Y7ODLgRVm99LCD7ulFEV8DP+y0RwA9Cipq9
 8PNCvcCI9CCwJJVXLl4Xwpy6ggqPCoBYZGiXuYrlnzeAa9THSXiqKvDmxstS/gYrX6pg
 XTD+Oh+dbZSgHuwG2STpfNBkYFmPbFSDeCw9Xrz0X0MQpGeBo/WYgFN9sWbQeGBNrmhA
 OqQVM11Niy8GOCbmH+Eb4ocElc0bogDax/ZpNflFl+l18OK4FsI2SV1WbtoCz9y4yaaC
 eirQ==
X-Gm-Message-State: APjAAAUKQphDsJwybMhHFzG4GX36+h/6GG2fxxpr3Z1HCs21zxZQwmb2
 WCI8YFXaDu52N8DAk25dDPOi3L2wY80=
X-Google-Smtp-Source: APXvYqxx7Vgnm2Ys+1sESCUZrGe7hz4zsH847eqL2OPl5Wo+U57cU9BUJTNCFA8kEFrr2Hw5GDefLg==
X-Received: by 2002:a17:90a:3ae5:: with SMTP id
 b92mr43210339pjc.26.1577694520063; 
 Mon, 30 Dec 2019 00:28:40 -0800 (PST)
Received: from localhost.localdomain ([49.206.202.131])
 by smtp.gmail.com with ESMTPSA id s1sm46240652pgv.87.2019.12.30.00.28.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Dec 2019 00:28:39 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v5 4/7] Makefile: rockchip: Use u-boot preferred spl name
Date: Mon, 30 Dec 2019 13:58:16 +0530
Message-Id: <20191230082819.30191-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191230082819.30191-1-jagan@amarulasolutions.com>
References: <20191230082819.30191-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_002841_448150_9F291746 
X-CRM114-Status: UNSURE (   8.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jagan Teki <jagan@amarulasolutions.com>, u-boot@lists.denx.de,
 linux-amarula@amarulasolutions.com, Akash Gajjar <akash@openedev.com>,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Most of the platforms uses the platform type and particular
boot stage on their image naming conventions in makefile
like,

u-boot-sunxi-with-spl.bin - Allwinner U-Boot with SPL
u-boot-spl-mtk.bin - Mediatek SPL bin

This would help to understand the users to what that
particular image belongs to? and less confused.

On that note, use u-boot-spl-rockchip.bin instead of
idbloader.img. idbloader.img is still a proper naming
for rockchip external documentation but u-boot preferred
spl name would always good choice in upstream tree.

Also, bin is more conventional way to include it on tools
like binman, pad_cat etc in future patches.

Note: usage of platform type, boot stage doesn't follow
consistent oder as of now.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 Makefile | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/Makefile b/Makefile
index d8a0f68883..b48693e560 100644
--- a/Makefile
+++ b/Makefile
@@ -909,7 +909,7 @@ ALL-y += u-boot-with-dtb.bin
 endif
 
 ifeq ($(CONFIG_ARCH_ROCKCHIP)$(CONFIG_SPL),yy)
-ALL-y += idbloader.img
+ALL-y += u-boot-spl-rockchip.bin
 endif
 
 LDFLAGS_u-boot += $(LDFLAGS_FINAL)
@@ -1387,11 +1387,11 @@ ifeq ($(CONFIG_SPL)$(CONFIG_TPL),yy)
 MKIMAGEFLAGS_u-boot-tpl-rockchip.bin = -n $(CONFIG_SYS_SOC) -T $(ROCKCHIP_IMG_TYPE)
 tpl/u-boot-tpl-rockchip.bin: tpl/u-boot-tpl.bin FORCE
 	$(call if_changed,mkimage)
-idbloader.img: tpl/u-boot-tpl-rockchip.bin spl/u-boot-spl.bin FORCE
+u-boot-spl-rockchip.bin: tpl/u-boot-tpl-rockchip.bin spl/u-boot-spl.bin FORCE
 	$(call if_changed,cat)
 else
-MKIMAGEFLAGS_idbloader.img = -n $(CONFIG_SYS_SOC) -T $(ROCKCHIP_IMG_TYPE)
-idbloader.img: spl/u-boot-spl.bin FORCE
+MKIMAGEFLAGS_u-boot-spl-rockchip.bin = -n $(CONFIG_SYS_SOC) -T $(ROCKCHIP_IMG_TYPE)
+u-boot-spl-rockchip.bin: spl/u-boot-spl.bin FORCE
 	$(call if_changed,mkimage)
 endif
 
@@ -1943,8 +1943,7 @@ CLEAN_DIRS  += $(MODVERDIR) \
 CLEAN_FILES += include/bmp_logo.h include/bmp_logo_data.h tools/version.h \
 	       boot* u-boot* MLO* SPL System.map fit-dtb.blob* \
 	       u-boot-ivt.img.log u-boot-dtb.imx.log SPL.log u-boot.imx.log \
-	       lpc32xx-* bl31.c bl31.elf bl31_*.bin image.map tispl.bin* \
-	       idbloader.img
+	       lpc32xx-* bl31.c bl31.elf bl31_*.bin image.map tispl.bin*
 
 # Directories & files removed with 'make mrproper'
 MRPROPER_DIRS  += include/config include/generated spl tpl \
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
