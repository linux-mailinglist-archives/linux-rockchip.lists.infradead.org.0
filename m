Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC91469ACD
	for <lists+linux-rockchip@lfdr.de>; Mon, 15 Jul 2019 20:29:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4ECdD8M8DzZ22k6P/mQGjmmbXvS1RJ00leK0kTdm/cg=; b=WvtrTOq/3oI10L
	1+5jve1J8lgv5LIpDuvzREuiE6d5XiuYnxt6bXDhm3eXU4NrBER+FJVwXKGWFb8UTgZkClVVNbNqd
	s6+t4CGtK0T2e4qKCDTw0MYQIForHerbn4GUJC25Bhomd7H/jJvvTQAo1KxtBppZo8uSuMAL16vZR
	oD+50dm0IQ3ih9AN70904sFpBCz/ft9EDqekzpKIrq+fD9SGCwlLgm5D3/BktLVyJzKgjLDIFW1bd
	9TlIGO5C2ZL7PTYfIOis7IqkiWIFn6ujo8lptMmGsIl1t/2Q64IyfB/knCOz2RLXOQl1dS5KMwCGt
	yr6/ZJLETe0DXF2v7miw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn5iy-0000p8-UT; Mon, 15 Jul 2019 18:29:20 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn5iu-0000mS-IR
 for linux-rockchip@lists.infradead.org; Mon, 15 Jul 2019 18:29:17 +0000
Received: by mail-pl1-x644.google.com with SMTP id ay6so8716791plb.9
 for <linux-rockchip@lists.infradead.org>; Mon, 15 Jul 2019 11:29:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DN7dbp/suL0eklOT4cOrJU8AKImrdUW67r8rQCwhI+w=;
 b=Dm2snpusG/9L2Gc+QCg1EzVAt468mtvVQHB8hXtCbCJQWdjlytrdKM7iw4MXBwkfL3
 3E/4Tn4uRMqHKPOzQXvSjJnhNKlcRSQ7Lyolr88K3Dj0r2eC1MXkylSwaJnwfpU27/7q
 477uimbMVra6GRJMhz3Ie0yCXMC6rdmXBRRh0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DN7dbp/suL0eklOT4cOrJU8AKImrdUW67r8rQCwhI+w=;
 b=aOOS9dmN6SN5EFOr9os0mufVmQJleDeig0vB8GWCncHBDvuXYGywNxvJ68w/UmlD4B
 0uO9Yaj3TUHxPl9r5ikqyZhJ8QLh+Xfqjc6QvKjgcqwIwdNoNLa+6sg7ogiS8ihYxGJh
 Ty3GeWasfEclkMtiRTFj8lgav5IdaHX4BoiKdxtNMpOMG3sWESAnaCN6IQQB/aBpTlzk
 uLN9mRYpW7HjZqzBM3pNTsPHxtzJM/B2Ge8OdRtTxVZPwwU9bnHr/XCjte7FXcIjZbKx
 z9kEk8FbvbQEkia3jyGK3HyQ0UPZRAp0D9uZj6igYRCQotaPor7nno7Ckhv4ausGe+Of
 UUDQ==
X-Gm-Message-State: APjAAAXWy23EPZekXDWA6cyNft+TAn4tu5WP2mYKUh0RzHG55rgPtydL
 6QcjMwSQ69UZaN6VmZIHfRIgzg==
X-Google-Smtp-Source: APXvYqyQcF9BDZXPZ4f9H2qobrmdfz3nmMBajCSgkZOhQCYnKMYEPCQ8oC2cyxvwemi+ffVCyaYKhg==
X-Received: by 2002:a17:902:5998:: with SMTP id
 p24mr29643545pli.110.1563215356029; 
 Mon, 15 Jul 2019 11:29:16 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id y133sm20250075pfb.28.2019.07.15.11.29.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 11:29:15 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 02/18] ram: rk3399: Clear PI_175 interrupts in data training
Date: Mon, 15 Jul 2019 23:58:40 +0530
Message-Id: <20190715182856.21688-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190715182856.21688-1-jagan@amarulasolutions.com>
References: <20190715182856.21688-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_112916_640471_C54E40C1 
X-CRM114-Status: UNSURE (   9.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-rockchip@lists.infradead.org, gajjar04akash@gmail.com,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Clear the PI_175 interrupts before processing actual
data training in all relevant calls.

This would help to clear interrupt from previous training.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index e9c0fdf2d4..fe26144f27 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -627,6 +627,9 @@ static int data_training_ca(const struct chan_info *chan, u32 channel,
 	u32 obs_0, obs_1, obs_2, obs_err = 0;
 	u32 rank = params->ch[channel].cap_info.rank;
 
+	/* clear interrupt,PI_175 PI_INT_ACK:WR:0:17 */
+	writel(0x00003f7c, (&denali_pi[175]));
+
 	for (i = 0; i < rank; i++) {
 		select_per_cs_training_index(chan, i);
 
@@ -681,6 +684,9 @@ static int data_training_wl(const struct chan_info *chan, u32 channel,
 	u32 obs_0, obs_1, obs_2, obs_3, obs_err = 0;
 	u32 rank = params->ch[channel].cap_info.rank;
 
+	/* clear interrupt,PI_175 PI_INT_ACK:WR:0:17 */
+	writel(0x00003f7c, (&denali_pi[175]));
+
 	for (i = 0; i < rank; i++) {
 		select_per_cs_training_index(chan, i);
 
@@ -740,6 +746,9 @@ static int data_training_rg(const struct chan_info *chan, u32 channel,
 	u32 obs_0, obs_1, obs_2, obs_3, obs_err = 0;
 	u32 rank = params->ch[channel].cap_info.rank;
 
+	/* clear interrupt,PI_175 PI_INT_ACK:WR:0:17 */
+	writel(0x00003f7c, (&denali_pi[175]));
+
 	for (i = 0; i < rank; i++) {
 		select_per_cs_training_index(chan, i);
 
@@ -799,6 +808,9 @@ static int data_training_rl(const struct chan_info *chan, u32 channel,
 	u32 i, tmp;
 	u32 rank = params->ch[channel].cap_info.rank;
 
+	/* clear interrupt,PI_175 PI_INT_ACK:WR:0:17 */
+	writel(0x00003f7c, (&denali_pi[175]));
+
 	for (i = 0; i < rank; i++) {
 		select_per_cs_training_index(chan, i);
 
@@ -844,6 +856,9 @@ static int data_training_wdql(const struct chan_info *chan, u32 channel,
 	u32 i, tmp;
 	u32 rank = params->ch[channel].cap_info.rank;
 
+	/* clear interrupt,PI_175 PI_INT_ACK:WR:0:17 */
+	writel(0x00003f7c, (&denali_pi[175]));
+
 	for (i = 0; i < rank; i++) {
 		select_per_cs_training_index(chan, i);
 
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
