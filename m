Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A73E786A2
	for <lists+linux-rockchip@lfdr.de>; Mon, 29 Jul 2019 09:48:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5AjcyKscA5PWQr87q/NhgHEL+QcfuNXmQRs/iLHizoM=; b=TDElDSeS9F/uxQ
	WVpQEXPCSmg1xpU94rxOFcu0mzE1s3ZvVU6U8HVD3ASlsYXhIM3re13xxCYiFIpFjFncSKWI9ERqD
	YAh4nOX3KcWcBwA9Gm1HBBsNpnaE++hRtLpdQkByHI8Te/Mbt6RUT7wRrTL5A0Mbjvrh7iEWy2f/4
	ZaeXqYnX/lJk2RoOmM/A1PVMKCX+EElEBhEQV3QN5IO81gO45H8Tof3KiyXOBEnSgQ55DBKFWJoEa
	RlcOMh8ADonsfz5SMfs7Cnx6ri1YcB1knNbQRyhyPxlahZHtWNfS49kg0/m16IbyM3L/2gVXtKoAC
	vLuTMNJ6/LtaSUdmJxJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs0OE-0002lW-MX; Mon, 29 Jul 2019 07:48:14 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs0OA-0002bL-ON
 for linux-rockchip@lists.infradead.org; Mon, 29 Jul 2019 07:48:12 +0000
Received: by mail-pf1-x443.google.com with SMTP id m30so27589442pff.8
 for <linux-rockchip@lists.infradead.org>; Mon, 29 Jul 2019 00:48:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UnjYrJEzucsxijDaLJ3Qy03AYryDuOEPvq0xHZN5TzA=;
 b=JES5mUdcV1iSSnvIWXFbbBkOHnH36E2+gxp/3//Ja6teVRkPFF6d4uocPLSPv4xw/h
 4OdX44e8CyVodKI3BLFuQzcHtbI6Pzg0Zx8IaSyUlc5a+BG8SrAZOIGlGoe7uO0fK9yr
 MrYNxYuyIbn4JDEBzNtCU3bV+t1scLokAQrZs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UnjYrJEzucsxijDaLJ3Qy03AYryDuOEPvq0xHZN5TzA=;
 b=I4SD/EcRVUoUeFn0Stgre9CBNC3eBFCz9Xxy/IItzL7qbWosF6KIriZiT40Pc9PN8H
 dlcxmu14jnfYyyGkzoQ9gjY9jr4nMJX9bHdKQeLR51OkYh7osJ2PrY4Cta4+mmTWOggq
 /Pi87+n/lHENbxLmLP0Cn8dpSXDYVh1GoIzkJJfI/hG0tny4vNT0w/Xgf//7Z44TkSQk
 xBxGZfuDvH+2uGIM5en6xA1VMqnQoy+pnRlhH41cInmWtv+yuOayN728+7gB3i5WGYc/
 rDc10HzbbW3RqOhHgQ2MIr0HNOsJouvy5qfIiNUxMXnnEcilqn5Hf1tSh1frIBqE7XKc
 6TRw==
X-Gm-Message-State: APjAAAUAOtl6gQMZKkhj4hCsMdK0N3YK8BYsRBhPr0NjMMKB6d2Qhyou
 d6bkHZEfaU3bsu1oEfiM6s6IAg==
X-Google-Smtp-Source: APXvYqx9wJOPSxmbBnTdii0utj5EHqU4x3FgYMhi1bcqUqEyFkjxbo1rbtkZkS6Ql+rBmPcnNhAm2A==
X-Received: by 2002:a17:90a:b903:: with SMTP id
 p3mr108891521pjr.79.1564386490275; 
 Mon, 29 Jul 2019 00:48:10 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.41])
 by smtp.gmail.com with ESMTPSA id h14sm75723348pfq.22.2019.07.29.00.48.06
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 29 Jul 2019 00:48:09 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH 12/15] include: rk3399: Disable watchdog in TPL
Date: Mon, 29 Jul 2019 13:17:08 +0530
Message-Id: <20190729074711.16988-13-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190729074711.16988-1-jagan@amarulasolutions.com>
References: <20190729074711.16988-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_004810_915635_A0D3C413 
X-CRM114-Status: UNSURE (   7.66  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jagan Teki <jagan@amarulasolutions.com>, u-boot@lists.denx.de,
 linux-amarula@amarulasolutions.com, Akash Gajjar <akash@openedev.com>,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Disable watchdog for TPL, since there is no support it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 include/configs/rk3399_common.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/include/configs/rk3399_common.h b/include/configs/rk3399_common.h
index 8df0180284..67b48e03ba 100644
--- a/include/configs/rk3399_common.h
+++ b/include/configs/rk3399_common.h
@@ -46,6 +46,11 @@
 #define CONFIG_SYS_SDRAM_BASE		0
 #define SDRAM_MAX_SIZE			0xf8000000
 
+#ifdef CONFIG_TPL_BUILD
+# undef CONFIG_WDT
+# undef CONFIG_WATCHDOG
+#endif
+
 #ifndef CONFIG_SPL_BUILD
 
 #define ENV_MEM_LAYOUT_SETTINGS \
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
