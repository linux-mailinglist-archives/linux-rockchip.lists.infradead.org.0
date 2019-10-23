Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91C35E2382
	for <lists+linux-rockchip@lfdr.de>; Wed, 23 Oct 2019 21:57:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rCNlAuYMGr/UK16oKnr29pQC3LK2ffz/yibSOJaUEuw=; b=rqTn7yor0Z3XK2
	Sa1TL8dQw4yj2xtEPa3/yyPoS1H/lJIwYq9Y0GzO9BLwOvJ1bWkhRStarM0kcU8wgXyj19Egsmmwa
	BcoThjhPwkYCtf875lZc5HyFXzt6Li8IBI58EA2hPTaeIoy7jgcYaAJxIyiLjgl471MPlJpauuV3a
	V097wP7/CxvSU2HtTaOYr0MpohDg6JnxDEZTTGlBfYIO4OjvdNMWj97mr1Ot+zd2n3WxmXbCDuf0N
	XU2Ozn2+tMdwNP539UiFcOYezm2f0go+SV1VT6vDRIvxYLM+4uepa8Luo72msBWCF0vgSLZ+skIa5
	KA97RxG0+ZkscBtoTjVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNMl3-00059r-62; Wed, 23 Oct 2019 19:57:25 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNMkz-000581-Jx
 for linux-rockchip@lists.infradead.org; Wed, 23 Oct 2019 19:57:22 +0000
Received: by mail-pf1-x442.google.com with SMTP id 21so2324661pfj.9
 for <linux-rockchip@lists.infradead.org>; Wed, 23 Oct 2019 12:57:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UfJRc8TL8ngreDxjNIKHRBze0gZ+aNZujK45sWM+6K0=;
 b=NPuhww57uC504fViO+1pcumTjj1Midr7pbZfVIu7UE4LVtJawmTovXcE4V6LITw8pt
 lnMmkJ43iPVQoWx2+fBVLMGX23D1Za0M/XYJ4JZPzvgtFm7X9aHfZwRriUwVZDZlv+YO
 cZXCp/sxVGoqbRYRjvqHgfyrGATtiEzUQjCko=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UfJRc8TL8ngreDxjNIKHRBze0gZ+aNZujK45sWM+6K0=;
 b=D29MS18c3XyzFhf1tVgej+5XnXn19eyxGcy6dIplk3WfRuZr3wMURLXoujIijN7mHx
 Jc3wohNeScTYnR1gA0VH4haCx29Q2jbluoIqHE6BV8geF86G5Q2PlyywOGCMSF8vYj3W
 9h3wJQu49w3W/1JR0TFLoLGm/0eGH9R+dK8JlaXepyLdf8+EGvBJdlbY1fnl+1xh/BwJ
 /PDSk8It9zIU+t1DrCG0/BqS9f0xNKxPKwECaQdcPzDM5Zwi+D5O6W0dfnH0nKoCIjJA
 FGsSg6SeZAHYdA12Cm78gI4zN/NMBQFCkkqdjseytSqLa2ERp1GbucL27c6ZNMjBoXXt
 G7jg==
X-Gm-Message-State: APjAAAUWY4XflzU4JKQuATR7Q70eKnbMHwRsktNYgQ3suPtHxr04UMCt
 kPSkgtipkjeGv/7IB6Od7sPo5Q==
X-Google-Smtp-Source: APXvYqyNUasef9lfwaFsRvi4GLoaVas/UNXLiZVNbEyLyAppE3j/BtDNkMdOyn+7Y7YdMciB8aueoA==
X-Received: by 2002:a63:5448:: with SMTP id e8mr11897058pgm.10.1571860640602; 
 Wed, 23 Oct 2019 12:57:20 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.31])
 by smtp.gmail.com with ESMTPSA id o185sm31499280pfg.136.2019.10.23.12.57.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 12:57:19 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v4 4/7] Makefile: rockchip: Use u-boot preferred spl name
Date: Thu, 24 Oct 2019 01:26:49 +0530
Message-Id: <20191023195652.7158-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191023195652.7158-1-jagan@amarulasolutions.com>
References: <20191023195652.7158-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_125721_658414_92BB257A 
X-CRM114-Status: UNSURE (   8.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: u-boot@lists.denx.de, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, linux-rockchip@lists.infradead.org
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
 Makefile | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/Makefile b/Makefile
index b58107d6ef..a4278170d4 100644
--- a/Makefile
+++ b/Makefile
@@ -887,7 +887,7 @@ ALL-y += u-boot-with-dtb.bin
 endif
 
 ifeq ($(CONFIG_ARCH_ROCKCHIP)$(CONFIG_SPL),yy)
-ALL-y += idbloader.img
+ALL-y += u-boot-spl-rockchip.bin
 endif
 
 LDFLAGS_u-boot += $(LDFLAGS_FINAL)
@@ -1347,11 +1347,11 @@ ifeq ($(CONFIG_SPL)$(CONFIG_TPL),yy)
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
 
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
