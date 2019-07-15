Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 873A469AE0
	for <lists+linux-rockchip@lfdr.de>; Mon, 15 Jul 2019 20:30:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NXiUIUvao4NmSI2ID9zjNr3+B4ZJUwonauocXsAbViI=; b=o64T4HY/1EuFMt
	EqsGbcpmeVrbThnTO9eEIZc5t6LiRh6djO9fyvaVN6ay5K6Ra/ScTxHV0TAadQOvKni9Qz2UGrNQ1
	PQS0LdI24qSR5fZKSi5jwnXNokwZjPycvFpv9xixGrLBfwirz8sCmvtDiVuUhVKQvPe3xBOx03yR4
	2eqMJmQdVvY2XX5kRd2ERtC0VQh7iTGvOv3xXrFaKEh1Q8qZEpDP/c3Orahq7JoclE2VDFeBjOkKA
	/xg0MPssS0gUEZ3Xu3OUOo3x1f7g9XtVBa2bJ9z9tu9XEDa8smC2bo7oy/XuUBrCaHnu9SycOxcFw
	53R7f8OFuyYmseuKznzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn5jl-00028t-MS; Mon, 15 Jul 2019 18:30:09 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn5jg-0001MW-FE
 for linux-rockchip@lists.infradead.org; Mon, 15 Jul 2019 18:30:05 +0000
Received: by mail-pl1-x642.google.com with SMTP id t14so8697177plr.11
 for <linux-rockchip@lists.infradead.org>; Mon, 15 Jul 2019 11:30:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RByc4KuNwswp3759wv/08UvlM/GeZhHFfJFldIHINB0=;
 b=kFVq7vbrs9VR7bXKgd9vZRDPlT44EKHZ44s5ZxIT1QIBffEEm4NcDZOm5qU2cUuVov
 TK7xPnLxJtQzmcjhr/pOQxgluMCCTBSALGziII16Qqu0cY0PBHYaj35pNR0WqkR3gDd+
 NpOS6/h9pVRWD8dBcBzDR/twoyeBxMJi0oy7U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RByc4KuNwswp3759wv/08UvlM/GeZhHFfJFldIHINB0=;
 b=qra8rt1IRRWx188y2tU9elbIn1/HsflCWRrZrEKwdYD750qFBu4At8S0XHvQOdFCT9
 99npV3nRf+iQLuutihlI7VeM/JAm7Vp0vjrQXSLvT5Fmor1/IW+cxi+mQGa1gN4WhQTd
 RSTYtvogm3pFFN4dPqxzEAYSMlxcsMe2bFEBYJJM4DzehX3bzQNA+35AYBDS+g8CGVaK
 vrYG0NRP+fsIFwdf+2UobrKCtETRx5U6ZXmFBZhpbIwjDC6AK+FAwhfOQTXqEZ/+j9Ts
 rmjJBdOJ6FmfQlOZgPd1Xyg5MChZw3Bto2vgkic6MqOzkDERogpbD5pUO8ccTPV+4hYM
 n4/g==
X-Gm-Message-State: APjAAAUET4YZHFdCaWHK3SB7g/XQY6t1OCGHwuo1RGjMDzccvaafvj60
 hvjK+Yg++uGn3VvKm3qh0qE27Q==
X-Google-Smtp-Source: APXvYqywsgSt58m+LvDm24277DQXJEksXD52HDqNZDFYDQT4q6xQokVMhQVKkTDj/UXPFeechT2nFA==
X-Received: by 2002:a17:902:be0a:: with SMTP id
 r10mr28259146pls.51.1563215401031; 
 Mon, 15 Jul 2019 11:30:01 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id y133sm20250075pfb.28.2019.07.15.11.29.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 11:30:00 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 15/18] ram: rk3399: Compute stride for 1 channel a
Date: Mon, 15 Jul 2019 23:58:53 +0530
Message-Id: <20190715182856.21688-16-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190715182856.21688-1-jagan@amarulasolutions.com>
References: <20190715182856.21688-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_113004_527556_0B632CC0 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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

Add stride computation for the sdram which support
single channel a

This configuration available in NanoPi NEO4 and the
same can work with existing rk3399-sdram-ddr3-1866.dtsi

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index c626ef602c..8bbacb5275 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1211,6 +1211,10 @@ static unsigned char calculate_stride(struct rk3399_sdram_params *params)
 		chinfo |= 1 << channel;
 	}
 
+	/* stride calculation for 1 channel */
+	if (params->base.num_channels == 1 && chinfo & 1)
+		return 0x17;	/* channel a */
+
 	/* stride calculation for 2 channels, default gstride type is 256B */
 	if (ch_cap[0] == ch_cap[1]) {
 		cap = ch_cap[0] + ch_cap[1];
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
