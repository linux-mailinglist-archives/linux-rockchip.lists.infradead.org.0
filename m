Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74A3E3CF7A
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:52:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v0tYH5GFnxB00IAeKaHCyuwFBGZkH6Pt6hvAGXANJb4=; b=tML7vhaOQOs/3f
	ETfycKzupfPBv+8Qg26b02RPirK+2NNf6w8PcpNlc5hHp0xrTq8UaVCN7SVA9K32+gO9wLQMBkEV0
	Ao9d+DJeQfVMePxIVNJzBmgXjw/pTWzqIGPor1pPN5nANvYjdUCXnPkK+sAqAYW5dTgB+VIsHYJks
	CBgKGGpqADQQ6SUFetDmYqsqXWlBl4DL5LF3USHzT/9xVgPQCgBRBc/zqwNyZZUql6UamF77xzYWN
	Je+N4BT8uFg4HJba7GDRR06/8VwlTZIG69Ayr72EGBlvfWJzc9itNgWOHRh6IcbuVFjtoyMWnPKG7
	Tq2v2MHohy3WCb6O9HAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hai8N-0003zS-Fy; Tue, 11 Jun 2019 14:52:23 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hai8K-0003xh-4z
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:52:21 +0000
Received: by mail-pg1-x541.google.com with SMTP id n2so7097310pgp.11
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:52:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=31IyQhlzrF72eorr3kRy/tlLonilIZgN/KedcGGyBqk=;
 b=XGF8MAVqefxrD+u233Vii0Qid31XknEN72iW+QtQD3lRoiBWFTLEaJLUlgHJ24xEAG
 na4QIMmy5a/AvsG6vA1sU6oVldQjdbpiIJ6jqgXWwLPDP2czIsfU3eatVe0esgT27GAv
 7eNKFJ3tdWK7FxnD19agueImErN9FsBIy67RE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=31IyQhlzrF72eorr3kRy/tlLonilIZgN/KedcGGyBqk=;
 b=mS+U7HR6aPv3VxfvDay3fwuPLZkux3udRBzmeosWDALmvdnFycCrBuSS+OltY/LPxU
 CWHkkjV0UHmIjIMHcluuKdmnkSBaXjJHaTbJtaK107u1Se19V5q7ROsDmiye8JKk2DL+
 SUn7v75qBDMiZPz+zcDTbRBk53NOaIREt532HKIdkztHhjZ6B0vbFw/jtPdInKUPM1Pr
 yy1viYQg3cCsTnB3TYOsxDgZ7gKYWcFD2DGcZLL3Uw9VYrkGGTIgoAzym4dhgZRHO+LQ
 vDo+iGcoLeKvtWApn1RPFKwgR0+5VSjkSw4YwJE6oC7H7uOe1S6mNqp5Aq8Kn2F47uVS
 quuA==
X-Gm-Message-State: APjAAAXwYpc4nYTEuylcOWeKfPGyZCGVZYmaJNq7BDlyux5U04TYj/lF
 Aft077QZYIkqd1bgOT7kfk3Uxw==
X-Google-Smtp-Source: APXvYqwzyDzNdDoFSAU0D2cmm5Sx7ioHVeLiFX4j4/FoyTAqAzmlNpiFYSF7+dY1kdYaumRxNhl0pQ==
X-Received: by 2002:a63:5c15:: with SMTP id q21mr6539608pgb.248.1560264739235; 
 Tue, 11 Jun 2019 07:52:19 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.52.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:52:18 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 07/92] ram: rk3399: Clear PI_175 interrupts in data training
Date: Tue, 11 Jun 2019 20:20:10 +0530
Message-Id: <20190611145135.21399-8-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075220_228723_A77DFCD5 
X-CRM114-Status: UNSURE (   8.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, gajjar04akash@gmail.com
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
index 52633166c1..74392076f0 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -618,6 +618,9 @@ static int data_training_ca(const struct chan_info *chan, u32 channel,
 	u32 obs_0, obs_1, obs_2, obs_err = 0;
 	u32 rank = sdram_params->ch[channel].rank;
 
+	/* clear interrupt,PI_175 PI_INT_ACK:WR:0:17 */
+	writel(0x00003f7c, (&denali_pi[175]));
+
 	for (i = 0; i < rank; i++) {
 		select_per_cs_training_index(chan, i);
 
@@ -672,6 +675,9 @@ static int data_training_wl(const struct chan_info *chan, u32 channel,
 	u32 obs_0, obs_1, obs_2, obs_3, obs_err = 0;
 	u32 rank = sdram_params->ch[channel].rank;
 
+	/* clear interrupt,PI_175 PI_INT_ACK:WR:0:17 */
+	writel(0x00003f7c, (&denali_pi[175]));
+
 	for (i = 0; i < rank; i++) {
 		select_per_cs_training_index(chan, i);
 
@@ -731,6 +737,9 @@ static int data_training_rg(const struct chan_info *chan, u32 channel,
 	u32 obs_0, obs_1, obs_2, obs_3, obs_err = 0;
 	u32 rank = sdram_params->ch[channel].rank;
 
+	/* clear interrupt,PI_175 PI_INT_ACK:WR:0:17 */
+	writel(0x00003f7c, (&denali_pi[175]));
+
 	for (i = 0; i < rank; i++) {
 		select_per_cs_training_index(chan, i);
 
@@ -790,6 +799,9 @@ static int data_training_rl(const struct chan_info *chan, u32 channel,
 	u32 i, tmp;
 	u32 rank = sdram_params->ch[channel].rank;
 
+	/* clear interrupt,PI_175 PI_INT_ACK:WR:0:17 */
+	writel(0x00003f7c, (&denali_pi[175]));
+
 	for (i = 0; i < rank; i++) {
 		select_per_cs_training_index(chan, i);
 
@@ -835,6 +847,9 @@ static int data_training_wdql(const struct chan_info *chan, u32 channel,
 	u32 i, tmp;
 	u32 rank = sdram_params->ch[channel].rank;
 
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
