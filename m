Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C789C136068
	for <lists+linux-rockchip@lfdr.de>; Thu,  9 Jan 2020 19:47:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tpa1LPOS/WQiQIoALSalxsMEslr3fB7UuLgq14BuuRc=; b=GsgP2BucxjQ7BB
	SdlBHJbgnGbyDcCXwOQhmKh2unjhUiyI2iZ2ZG5LpBo2CmLL4s1UiwhGJcR7vrrE3oPK6fHYdRUpT
	rsCqqzokuplHgXbHnVPAfHvaMRxgjXzCQ3ljlUfPIp0VcVK/oVHauOcfABq1hbobhu3pb4lnD7vJT
	oShKIKbJtnYymPuGrqE72SpxNtFmLFMELCWf4RLcUBdXyvbV0rRmf5kQQxp/CIQoWinjqqYvuG9QZ
	qz6tm0WKnasoMXKIqYE1ZXLr+xefry2ohO9hPiNMWAk9j0uiVX4lfWqFUL40S+vqtX3bZFnID20JF
	etVxUI4e1GdJ7dRtEbgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipcqa-0002h8-0V; Thu, 09 Jan 2020 18:47:56 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipcqX-0002gF-M4
 for linux-rockchip@lists.infradead.org; Thu, 09 Jan 2020 18:47:55 +0000
Received: by mail-pg1-x543.google.com with SMTP id k197so3618766pga.10
 for <linux-rockchip@lists.infradead.org>; Thu, 09 Jan 2020 10:47:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=svFOCP+Hi5ZqvIKYRk6Zycpu9rLX5NELckQLxT8y0tQ=;
 b=hyrLjcMTYh8xhAFVAWDvAXRCSj1X0xBFAFA8845Z5PkhcDRFFfz4RDShhytZW6CJ6B
 zA7rJUvNjmtl0fV6MI/lMqYZka4MOEHURxGW99HvrSZ5Z+WYAQvVmWpfAM4/7O2LcPzN
 vZGGUJ7vCbhmwjiBFiGqUn3emouPr+vQQD7R4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=svFOCP+Hi5ZqvIKYRk6Zycpu9rLX5NELckQLxT8y0tQ=;
 b=hjnLH9ipBEkZC1V8B5RcPMftVwDWIJeumRKcUB0bEJq/wKTIlbvFag05BZMgbAsjHH
 cdyEatgBS1UMbVobyHJgms4trFGxhbFHeKBDG3Vm89Y7I2O9TElMEIhKMTTTvzV6wfF3
 AhGQSsJAXcWcotYV7oXAFBCtB6Y90Tk0xn57JdTZaCut20Q33PIu7eJayNrSlUh+M2fl
 mppyqt2zQ0UDBME3rmKHz36S6gn5QiTkRSc3DMsXutyGWgqRt/32Jrq2hAHsbqXyujFR
 h8lBq4DrNtpUpfa1gr6a9VEi5OD9l1W4b/tgSUDQs+vKAVo5klTDoLnc0r4O7eM5EgGL
 YKRQ==
X-Gm-Message-State: APjAAAV8xtLS2NDxQ2IBiTDxJWLfFt7ISRBxdNcZmlGOI53k1s5CNhaH
 XzvNoq87tRR62prQl721NTDvow==
X-Google-Smtp-Source: APXvYqx8itwUsZvmhFP9is/hawvqZ6ec0rHI+bA3A2mUezV2+yD+RoSTB/ke79oQ08ormUb2wkTNkQ==
X-Received: by 2002:aa7:9191:: with SMTP id x17mr2565462pfa.38.1578595673069; 
 Thu, 09 Jan 2020 10:47:53 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c809:c7d5:c4eb:be5d:1485:edee])
 by smtp.gmail.com with ESMTPSA id i8sm8967306pfa.109.2020.01.09.10.47.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 10:47:52 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v7 2/7] Makefile: rockchip: Suffix platform type with tpl name
Date: Fri, 10 Jan 2020 00:16:17 +0530
Message-Id: <20200109184622.3098-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20200109184622.3098-1-jagan@amarulasolutions.com>
References: <20200109184622.3098-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_104753_726053_7ECBA63B 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jagan Teki <jagan@amarulasolutions.com>, u-boot@lists.denx.de,
 linux-amarula@amarulasolutions.com, Akash Gajjar <akash@openedev.com>,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Most of the platforms uses the platform type on their boot
stage image naming conventions in makefile like,

u-boot-x86-start16-tpl.bin - x86 start16 TPL bin
u-boot-spl-mtk.bin - Mediatek SPL bin

This would help to understand the users to what that
particular image belongs to? and less confused.

On that note, suffix platform type rockchip for existing
u-boot-tpl.img so now it become u-boot-tpl-rockchip.bin

Also, bin is more conventional way to include it on tools
like binman, pad_cat etc in future patches.

Note: usage of platform type doesn't follow consistent order
as of now.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
---
 Makefile | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/Makefile b/Makefile
index e264b2a49a..50ac12fe9b 100644
--- a/Makefile
+++ b/Makefile
@@ -1382,10 +1382,10 @@ else
 ROCKCHIP_IMG_TYPE := rksd
 endif
 
-MKIMAGEFLAGS_u-boot-tpl.img = -n $(CONFIG_SYS_SOC) -T $(ROCKCHIP_IMG_TYPE)
-tpl/u-boot-tpl.img: tpl/u-boot-tpl.bin FORCE
+MKIMAGEFLAGS_u-boot-tpl-rockchip.bin = -n $(CONFIG_SYS_SOC) -T $(ROCKCHIP_IMG_TYPE)
+tpl/u-boot-tpl-rockchip.bin: tpl/u-boot-tpl.bin FORCE
 	$(call if_changed,mkimage)
-idbloader.img: tpl/u-boot-tpl.img spl/u-boot-spl.bin FORCE
+idbloader.img: tpl/u-boot-tpl-rockchip.bin spl/u-boot-spl.bin FORCE
 	$(call if_changed,cat)
 endif
 
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
