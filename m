Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C5F178696
	for <lists+linux-rockchip@lfdr.de>; Mon, 29 Jul 2019 09:47:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LcVgn87Y/WEWdrXTHKszs6aCWPS+yH7BpPTr/v5F+SU=; b=CCRPTJGaFsPhcW
	V6ngmEIZEA6TefNVMsAoQFWMTnpSQMlsTF5PVxNGN6FC+VKoMc/aRzySsotVTsSGO7q04EGtdnwsx
	XFRSXdwPKGyJayN+JpqzTTs4BgAKlXq/hZrzR7t5d6CeXFpjvmNOasFv2HOUM8O58F0MBT5qXvlt4
	fIZE/BYW46XRpwS7fH2Wh/N7egCKndn9NS3+/yanegItPWxRjSfjwgUECjnQth3AvN4fSwnd0T852
	XOtuOnUP8VZPtEjTmki3bQXPppGPSLJNv4poXQ3tAPVoDdTpbwuuIL9Bs/Zz50DRetz2p/9Ds2Eyb
	tOgtOnrbugCb6kBanxBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs0Ne-0001uA-LM; Mon, 29 Jul 2019 07:47:38 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs0Na-0001rr-Vz
 for linux-rockchip@lists.infradead.org; Mon, 29 Jul 2019 07:47:36 +0000
Received: by mail-pl1-x641.google.com with SMTP id b3so27195668plr.4
 for <linux-rockchip@lists.infradead.org>; Mon, 29 Jul 2019 00:47:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mgFw3iYrH+nI0SVN4epuo/Jnv38uJqCeO59EyXMs1/M=;
 b=kJJcD6461D2S8TX1uuWNojPPz09bo0vsutkFYvMCUJlWXVTvDciTzVDxYTp50yXtl9
 XxKY+7UZm5NTwZ2K8bj7AFe/S1ANT/A2z+Jvh155+Fmv46KOHxpbNig+6I6t8piexNWM
 yrNv3eo4woir2nk+25nPikNJsUyqKuymJYNZE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mgFw3iYrH+nI0SVN4epuo/Jnv38uJqCeO59EyXMs1/M=;
 b=KZt+vtizt/jWSAf6YABDzqB4zjM99O7UqufAMLhQUAIE7hFdD0iaGQc4dkfl5pmufk
 BAfvEzVqplKvHFDbkGPHO67Hw30JMK7d9hmg3IK/x8JPxwvomaenp+4HA6qju/5yVNvd
 vtQ4gE1JeULjhVqpwRBKellsa7TXGVqVDZtH4uAf63TaRVSIpwOddMjP5Xuw/Fq3TF+i
 3Q7FsaEXBnUy6N6BhNtE230dLeje8n64gPLenAqukjoYS62JwQOAzN00gEyrsjCt05AH
 hQVjupuaYsMhlyIpiCBQ9RQ3V3q79v7YALKRmN3+RaMPqin9GKq2woRqpe3JKXyuW6oB
 kdMg==
X-Gm-Message-State: APjAAAWaLxbT7McYbhC3Q2D1Oz+ihoxTgAxGR780fk5cNHJ6WR81Ggsy
 liFtPZa2wb4YGHIRxmJ9eMGJhg==
X-Google-Smtp-Source: APXvYqywKbVAJHnrKgzTOaNx4mNo1oZ/tTTQMIacAqARIfdzoTOC+VA3GqRON42hYFGcw8ibONL0sQ==
X-Received: by 2002:a17:902:110b:: with SMTP id
 d11mr113400546pla.213.1564386453901; 
 Mon, 29 Jul 2019 00:47:33 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.41])
 by smtp.gmail.com with ESMTPSA id h14sm75723348pfq.22.2019.07.29.00.47.30
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 29 Jul 2019 00:47:33 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH 03/15] rockchip: rk3288: Print reset reason
Date: Mon, 29 Jul 2019 13:16:59 +0530
Message-Id: <20190729074711.16988-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190729074711.16988-1-jagan@amarulasolutions.com>
References: <20190729074711.16988-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_004735_072070_60A13134 
X-CRM114-Status: GOOD (  10.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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
Cc: linux-rockchip@lists.infradead.org, u-boot@lists.denx.de,
 Jagan Teki <jagan@amarulasolutions.com>, Wadim Egorov <w.egorov@phytec.de>,
 linux-amarula@amarulasolutions.com, Akash Gajjar <akash@openedev.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Print the reason for reset instead of storing it into
env variable in rk3288.

This would help to find the reset reason directly
on U-Boot proper logs.

Cc: Wadim Egorov <w.egorov@phytec.de>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/mach-rockchip/rk3288-board.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-rockchip/rk3288-board.c b/arch/arm/mach-rockchip/rk3288-board.c
index d3ec141fea..613264d7ee 100644
--- a/arch/arm/mach-rockchip/rk3288-board.c
+++ b/arch/arm/mach-rockchip/rk3288-board.c
@@ -72,7 +72,7 @@ static void rk3288_detect_reset_reason(void)
 		reason = "unknown reset";
 	}
 
-	env_set("reset_reason", reason);
+	printf("Reset cause: %s\n", reason);
 
 	/*
 	 * Clear cru_glb_rst_st, so we can determine the last reset cause
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
