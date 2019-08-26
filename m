Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D36F9D5C1
	for <lists+linux-rockchip@lfdr.de>; Mon, 26 Aug 2019 20:22:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=omaGqI1BkOtZSpFw9Tglpm8W33QcciUKL0orf9jXJ2c=; b=sCQBaDDzUw4I2a
	G8b3Ef9rLPBGyH/Ha9J0uNSf+/aXS8mnVoetYmpk8Ac1wSwsA27jKQWIM2HXE5+EAQz0CbA/BDpsv
	KJlzYyKdGX09l6qprXbT2EIdvYU4ToBA4qbpXDWz5tHjU/Zj1bRrYgSmRxNtjZPNh/aU+WsXYaiYW
	txe4/wKVT9pN/B2I4E/qIKctJj4UDDcnSvbjQRr09Q1oyXfoO6Hw9Emne7+mTzEwlQr9AWjZE4k1A
	Ns+u2iF2iuu/1wLlh8ruSTivEBQ1F77FZz5trRc9uGvAFe5UAyLULSlxWHc7pk05usZeeo1/GlhXK
	uQjdUMEB6zdD+4N89sBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Jcz-0001yf-73; Mon, 26 Aug 2019 18:22:05 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2JcZ-0001Zd-Cm
 for linux-rockchip@lists.infradead.org; Mon, 26 Aug 2019 18:21:40 +0000
Received: by mail-ot1-x344.google.com with SMTP id o101so16093782ota.8
 for <linux-rockchip@lists.infradead.org>; Mon, 26 Aug 2019 11:21:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=aXcTM8Gfv2hGExnUDQ8bArc/TvpKmsOye+qMcasriMw=;
 b=b63E40ugeFlY2cSYQWyr4BeIbIO5D1vLPgSIV8uI0FSPjXXbj4CQvJ6kETgdpmVRg5
 dSqxNFfWI+HYhiQUQSPRRhjofX4yqXmVZZrTF7vQzywZNovUgt3pcZKf1vtjs4YUwXuy
 9QylVv9bWeuEjlsklxxoRfQwMdRnAaLaNcgdk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=aXcTM8Gfv2hGExnUDQ8bArc/TvpKmsOye+qMcasriMw=;
 b=a9IbP5mwoJacvGZAJJOYY2Ma78FPvkRt4mV7LKpNLI7eT/eiC0kN+Hi2wrJ6u/o4fk
 AN7+1UuB3St18zL+yK0IExH9TUVGIITrpGZNZBlW25BnEF5ORm5DBtUuyOb/Ut5KYKOO
 iHAUVbrQ2EmxHpmX4LYUgGaaPJgoMTodRM7jboN8OXcGHvvJ2pOtsGZmD8Kh9CTdDUM4
 wzqeF1J2JkbNzWWJn7pCsOFmZWReLHetnzSlMVOJMZbzZWL4yjlrnMkc8gSJSRQNPCjA
 zFtPHk9mqrTLxpLn1rP+pj0Qxy2orZY4xPND87vLDPDW0aygWaK+b6tAv+/QSr9o/1Y1
 WA7g==
X-Gm-Message-State: APjAAAVpdDd5BxfgEkhFM7PGjZCalxs26F1bI/EtOyQeg01OaXKyzYRI
 Ry2km2A0vdkZw9oYy4eHTfEl2A==
X-Google-Smtp-Source: APXvYqysI50R4cvTdN5fkEQfUjlZL0qWvY8e3GPiEGPb1Tk2+qmhErU0vjmiPSzXMgZqJRZ/zvdW9Q==
X-Received: by 2002:a9d:5502:: with SMTP id l2mr10774106oth.309.1566843698784; 
 Mon, 26 Aug 2019 11:21:38 -0700 (PDT)
Received: from jagan-XPS-13-9350.attlocal.net
 ([2600:1700:7430:38e0:d5b0:4823:33c8:5e46])
 by smtp.gmail.com with ESMTPSA id c11sm4401461otr.54.2019.08.26.11.21.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 11:21:38 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [DO NOT MERGE] [PATCH v2 16/16] rk3399: rockpro64: Enable bootcount
Date: Mon, 26 Aug 2019 23:51:11 +0530
Message-Id: <20190826182111.30999-17-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190826182111.30999-1-jagan@amarulasolutions.com>
References: <20190826182111.30999-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_112139_449181_58F4B4BA 
X-CRM114-Status: UNSURE (   7.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Enable bootcount support for Rockpro64 boards, this
would help to use it for redundent boot.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 configs/rockpro64-rk3399_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/configs/rockpro64-rk3399_defconfig b/configs/rockpro64-rk3399_defconfig
index 5ff38efa53..84d050d743 100644
--- a/configs/rockpro64-rk3399_defconfig
+++ b/configs/rockpro64-rk3399_defconfig
@@ -57,3 +57,4 @@ CONFIG_SPL_TINY_MEMSET=y
 CONFIG_ERRNO_STR=y
 CONFIG_WDT=y
 CONFIG_SPL_WATCHDOG_SUPPORT=y
+CONFIG_BOOTCOUNT_LIMIT=y
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
