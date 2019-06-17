Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A7D947B15
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:37:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FiGHsrGSbgmjCPIvBUqV8F1mFpVopYogT3RS21HyThM=; b=FuHYu4rlxwkIIZ
	+ELpDyfv2fqXF0SXkcqOXj0BP9U7MiTwPqpLOMH5p7+H43U99VDxH+Yc/+ZD8ePVV+ZzsPd56zAGu
	aKXwfACFNrC2xR28NBwe60T/2cuevCV5ENN9Fopc/oNq7/8W2DVvRKKu+5bZbdOD3Y3e/EclZ/WB5
	1EWrakftxIR8XwX5tR/S30k4LAWaM1mOxpy2fyqazvW/Jqi/vHntrs99rcV8BouS7eXpduz+wO7tT
	wxX41E7BJI9lzLDyfoTrC8EdbveYWC05q9vJljfbYNfg6y7iGxJNA4AHCRDin26CGn9R75go2LaFd
	rrhsvfyBLu67kL0OddlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmCJ-0005RX-Ks; Mon, 17 Jun 2019 07:36:59 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmCE-0005P3-WA
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:36:56 +0000
Received: by mail-pl1-x641.google.com with SMTP id b7so3725347pls.6
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:36:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jjOaByF6DG4Wi5iXKaE8Y5nHQba8rk25ZozVxH6G5Gc=;
 b=Gly4A/0cg4o7IaH8fuy6owEvk8dgaeN2/JWkXmVEY34Rn4ZkOKOFa70uSFuBXcV9bF
 ouFrxfIcyCTK2s7RhyFi/jIKTg9hhHbZEZzdFP/FlB51X2jeyXfwlpJu5daesmDr7H2G
 sHGvOeSBuv/8tCBgfHvRRkDPF+hXGMFtW/d5I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jjOaByF6DG4Wi5iXKaE8Y5nHQba8rk25ZozVxH6G5Gc=;
 b=iF5oF3EwDZKizeeqVBabnONPuDJP4u/+znUrJwkHjTM8PAnCDyC9TfO1HHcQzkFCF/
 DgtYB1CtyFWyg8DzQsQkIr4mqWvWVyvUSJ0AGgtuuOX0/yl8s6wI8K+N3zINLewPtp8Y
 JpiECweQWRUpnDSoU3P9w4h4VnPP/FKMH17S4FrXGeUEdNrWL4mMSWHHtkis0O7eu/iy
 6zJ5g9T/cj5y9eu1D7fW+1fWXQ+KT5urvpEIINe/5Ay16CJTtXfbRKSpoRX2XQvpTXxo
 EAfEYuynmr67wnpzYR8EFPdgho3mdEBfqDg60xjAXCBjHkCl93a3zxwgQZF2o12R8bBR
 3qeg==
X-Gm-Message-State: APjAAAXLGypgMayUr0lNSvlwcWMJb5hlws8MQ3nqrW1kMBzb3M38QdV8
 iQAJqIw2CDlnJwjV5EG2EazSBg==
X-Google-Smtp-Source: APXvYqweP9bto1cpPyrzfMKzoSoIzeF3+UNXmQerrltUYP1wRQbdzyQaofrQVz5C8EjJET5oWnAa2g==
X-Received: by 2002:a17:902:6ac6:: with SMTP id
 i6mr92870588plt.233.1560757014113; 
 Mon, 17 Jun 2019 00:36:54 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.36.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:36:53 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 10/99] ram: rk3399: Use rank mask in wdql data training
Date: Mon, 17 Jun 2019 13:01:23 +0530
Message-Id: <20190617073252.27810-11-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_003655_148661_6F417F69 
X-CRM114-Status: GOOD (  10.54  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Add rank_mask based on the rank number, this would keep
the wdql data training loop based on the desired rank mask
value instead of looping for all values.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 76d6440f9a..32fc7771b3 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -851,11 +851,17 @@ static int data_training_wdql(const struct chan_info *chan, u32 channel,
 	u32 *denali_pi = chan->pi->denali_pi;
 	u32 i, tmp;
 	u32 rank = params->ch[channel].rank;
+	u32 rank_mask;
 
 	/* clear interrupt,PI_175 PI_INT_ACK:WR:0:17 */
 	writel(0x00003f7c, (&denali_pi[175]));
 
-	for (i = 0; i < rank; i++) {
+	rank_mask = (rank == 1) ? 0x1 : 0x3;
+
+	for (i = 0; i < 4; i++) {
+		if (!(rank_mask & (1 << i)))
+			continue;
+
 		select_per_cs_training_index(chan, i);
 
 		/*
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
