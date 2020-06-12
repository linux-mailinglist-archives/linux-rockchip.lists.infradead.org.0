Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87F961F73FB
	for <lists+linux-rockchip@lfdr.de>; Fri, 12 Jun 2020 08:41:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xTr3Wi0OH+pVcw6Gdc7ilWFraAXgn9fTaF00RqjLH34=; b=aSuGny+9oLpcr7
	x4O1cLbRf1J5wYeiV+psg2Q8FD0YBxzP2URuHqBXLKHk4QA3764SqwWO3ww8zCqncevapn6Xm0iBc
	Xiyr+lhLtg1tub6g8uR8TueMAJeHPDKNfrftS2SjCFf3owArzKtoSkhY4n8TXDZmmlWDE97uQ/Ad0
	Gkez6O9jcQd4uvEPMAqd+NRybTikDW7T07hnWg56POI0NzQcCuo64J61dwgdUNu22rB3Z+Kafogbo
	UH254oNeV6/z69KP/og7MEzn+dVXtNaKCYo5XIIx30R5kTocJaMn61QmtGkoNuJ4QZqM8kDCwuoQo
	1flTxccIvfzvuI9uu61A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjdNe-0003sh-2T; Fri, 12 Jun 2020 06:41:34 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjdNa-0003rG-NQ
 for linux-rockchip@lists.infradead.org; Fri, 12 Jun 2020 06:41:31 +0000
Received: by mail-pf1-x444.google.com with SMTP id d66so3847937pfd.6
 for <linux-rockchip@lists.infradead.org>; Thu, 11 Jun 2020 23:41:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MQQWYjNi+KcpW1XYoBFyoT4VQtOEN3rSfwRqqQtAqGY=;
 b=TKW9NA1t2OeEt+Qgk5qjO8ZvhlTX70NLvo1KNVn8XUd00MA6i+y5dJC7ulEC3wyV4g
 lOiFWIaEevkA2XoysyjuczPCC9Iq2bLoNkOUkgUEEBJaehziXiWaOamYWFRdWUkSwSR4
 cQpBA33eQ3h+K8uvF415oBK/SDBHG7UYR0X1g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MQQWYjNi+KcpW1XYoBFyoT4VQtOEN3rSfwRqqQtAqGY=;
 b=YMxTqm6pab2IbErAXlTY8jvNJWABOrNJbKuHXcC2oUrX6cTiCQuaS5JkWPkeQur9yB
 wH+Ddl0tVuFo3nSTGtDlvmJM75y2NDUp860Nx0MAK1QNz6tQ6Z63sQcnHIJJzAUqTFaq
 LNb7zVsHNFdQTcQEArDlLTadzYDUwDb3JIBT6rR6cOzDf0nU3BXNyGeubC3aKTZ896bN
 QgJwqRCESbIWYSeRDHiBLuiSGu6E+ic0K3aiA3ORIvrVy+P+qBECSqqakkg0xwfE3smw
 jOSmkgAL2cUkw//eHoaXKjoy3CCpvW3yylbKnoCeoCbIAQTcpPKAEXy9zDgA1TCqh2Ua
 EAGA==
X-Gm-Message-State: AOAM531usEhOCCZM/g+PdX6XQ7lwgTwTqnRZXt3IJsvRh00yr3hekeWG
 OIUfeg4VQ24Q1IAyS4gkRDAO8w==
X-Google-Smtp-Source: ABdhPJxosVQxcdV6gizjsNW2Wtij/jMvnOdwChSxLVzwjnVWsJD9lGkxgchF/+n///9R57MDi2x9oA==
X-Received: by 2002:a62:4ec7:: with SMTP id c190mr8699410pfb.55.1591944089984; 
 Thu, 11 Jun 2020 23:41:29 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:b5c9:c9f3:725c:9867])
 by smtp.gmail.com with ESMTPSA id j19sm5033878pfn.109.2020.06.11.23.41.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Jun 2020 23:41:29 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Simon Glass <sjg@chromium.org>
Subject: [PATCH 2/2] rock-pi-4: Enable HDMI output
Date: Fri, 12 Jun 2020 12:11:08 +0530
Message-Id: <20200612064108.459227-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200612064108.459227-1-jagan@amarulasolutions.com>
References: <20200612064108.459227-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_234130_757623_DC48AFE3 
X-CRM114-Status: UNSURE (   7.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: U-Boot-Denx <u-boot@lists.denx.de>, linux-rockchip@lists.infradead.org,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Suniel Mahesh <sunil@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Enable config options to get HDMI output on RockPI-4 boards.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 configs/rock-pi-4-rk3399_defconfig | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/configs/rock-pi-4-rk3399_defconfig b/configs/rock-pi-4-rk3399_defconfig
index a4b322074c..98f71a50a5 100644
--- a/configs/rock-pi-4-rk3399_defconfig
+++ b/configs/rock-pi-4-rk3399_defconfig
@@ -58,6 +58,7 @@ CONFIG_USB_EHCI_HCD=y
 CONFIG_USB_EHCI_GENERIC=y
 CONFIG_USB_DWC3=y
 CONFIG_USB_DWC3_GENERIC=y
+CONFIG_USB_KEYBOARD=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_HOST_ETHER=y
 CONFIG_USB_ETHER_ASIX=y
@@ -65,5 +66,9 @@ CONFIG_USB_ETHER_ASIX88179=y
 CONFIG_USB_ETHER_MCS7830=y
 CONFIG_USB_ETHER_RTL8152=y
 CONFIG_USB_ETHER_SMSC95XX=y
+CONFIG_DM_VIDEO=y
+CONFIG_DISPLAY=y
+CONFIG_VIDEO_ROCKCHIP=y
+CONFIG_DISPLAY_ROCKCHIP_HDMI=y
 CONFIG_SPL_TINY_MEMSET=y
 CONFIG_ERRNO_STR=y
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
