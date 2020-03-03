Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9446917832B
	for <lists+linux-rockchip@lfdr.de>; Tue,  3 Mar 2020 20:30:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Vl+C0+v1GL8rdMhZCs6xH1JCwu8hmrRhLg2P82crvqU=; b=TgC/HmOeHWsGS0
	/4gIGTHGTI5EYlyyYE+9BCjGc1IRqVS7qZFKNXlIpQE0oNJdMhm9KjVRUzCXQGxhUrRS5acqXO8xo
	iQu/nrJhzAfZ1gz1Y01pQ2tNpRGWXM+SeP4m9JloGQvJMTGgbJyYNlDUR+6QLREm6cFMWjaBv1keZ
	JxOVg8tEu3klgk3xD4+YQFh2RXzDeyFqIUEuTcvQsJbnTfTWYJzLEw3K5Dv9D5aRusVpPWUy8UtkG
	WwgKFR1I1BOCXum68mTcWT6X9mM7RvoDExfMvDe0JsfO4L0zkG5uf+Tz34s3OI6Opjr24d7bAsEO0
	aN8VCBUasYBSgH+Q8QiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9DFD-0001n8-Vu; Tue, 03 Mar 2020 19:30:19 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9DFA-0001KL-Lq
 for linux-rockchip@lists.infradead.org; Tue, 03 Mar 2020 19:30:18 +0000
Received: by mail-wm1-x343.google.com with SMTP id a132so4619972wme.1
 for <linux-rockchip@lists.infradead.org>; Tue, 03 Mar 2020 11:30:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=eLsvFFlZ8l09UWApmtGDnVPv6MG087h7rXG6DY2TdQE=;
 b=Xu4sE3PKhvoy3YjexN5KvyigUsTgJJBukVuuOSRBr0c/pIvm8TKwRPDfTIY4YbbujF
 klJ2W2xJVKFFfbOec8iHOip9Saic+QZ4m2Toy88Sxe0zyKXLfyWYmBWoZNEzhWDXe5+9
 FFGPggOGod2ndlcqGtG1xR+rhjH2jXV9O2JxV32xSmzFT5rAhFaTcaQpXjI8NWp44ndx
 u2oTtofjCNzMFdOlY9EH8TFVshAZWXIw9kpm/b+MZlW/zCWznxbXGEWExRPAqqOeivxp
 eta6po1Dysrdc6nJ8qxnjzV8TL1RlUWS5osRWJEA0RJLcji4LEuctGdbx+rgDk8fjQwB
 FQ1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=eLsvFFlZ8l09UWApmtGDnVPv6MG087h7rXG6DY2TdQE=;
 b=frW+paIc6uEGK8aJdQgkLC+mPFk1XUT/O4kqYEG4pT6aWs8yS73BvCKkDan45HPzoy
 sOgQelWuRXzsOY4AmANNqZQCfd9gJerlMXqetsgtaO8RBXCg7WoSU5HHlkDvnkvfuBDQ
 t7D/Ok8yclBapymYx47PU+2ls6bOVWSwJjhJnIZD0bXuLt1G/3hdWC0BUMAHwtHWxIJ0
 nrjPpleNvQv4xsUy8k6m9vwDZXRW4C9ejrB5U2FS25eMUsqjKG0vnfX2r7Q4NEFoqTh0
 5MRFtyJa8mFVD0vuOuexUNUdv2Kl7Z7hBPAX/Foph4CzVh0P8O81Qf7lIYD+rA6U3bZm
 fgWA==
X-Gm-Message-State: ANhLgQ1qV5xwdQ+A93XR6B6VYVZUFMrnkvpA5eQxt8D4Sq2xbJtpMeKt
 WgqjPIf+oW0gqarOVUea+y5GPA==
X-Google-Smtp-Source: ADFU+vvgohVRhFuFhTLyG/81TfZZbiRhxlI1wlFSO8TcMr7u7HNNf234Xb78qJex+ypXm4I6EEmadA==
X-Received: by 2002:a1c:80d4:: with SMTP id b203mr87984wmd.91.1583263813664;
 Tue, 03 Mar 2020 11:30:13 -0800 (PST)
Received: from localhost.localdomain (cag06-3-82-243-161-21.fbx.proxad.net.
 [82.243.161.21])
 by smtp.googlemail.com with ESMTPSA id w22sm102469wmk.34.2020.03.03.11.30.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Mar 2020 11:30:13 -0800 (PST)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Stephen Boyd <sboyd@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH] clk: rockchip: fix mmc get phase
Date: Tue,  3 Mar 2020 20:29:56 +0100
Message-Id: <20200303192956.64410-1-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_113016_718201_3AB4BAFD 
X-CRM114-Status: GOOD (  10.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Markus Reichl <m.reichl@fivetechno.de>, linux-rockchip@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

If the mmc clock has no rate, it can be assumed to be constant.
In such case, there is no measurable phase shift. Just return 0
in this case instead of returning an error.

Fixes: 2760878662a2 ("clk: Bail out when calculating phase fails during clk
registration")
Tested-by: Markus Reichl <m.reichl@fivetechno.de>
Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 drivers/clk/rockchip/clk-mmc-phase.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/rockchip/clk-mmc-phase.c b/drivers/clk/rockchip/clk-mmc-phase.c
index 4abe7ff31f53..975454a3dd72 100644
--- a/drivers/clk/rockchip/clk-mmc-phase.c
+++ b/drivers/clk/rockchip/clk-mmc-phase.c
@@ -51,9 +51,9 @@ static int rockchip_mmc_get_phase(struct clk_hw *hw)
 	u16 degrees;
 	u32 delay_num = 0;
 
-	/* See the comment for rockchip_mmc_set_phase below */
+	/* Constant signal, no measurable phase shift */
 	if (!rate)
-		return -EINVAL;
+		return 0;
 
 	raw_value = readl(mmc_clock->reg) >> (mmc_clock->shift);
 
-- 
2.24.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
