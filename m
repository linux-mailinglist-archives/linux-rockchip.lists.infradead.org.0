Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E2BB69ACF
	for <lists+linux-rockchip@lfdr.de>; Mon, 15 Jul 2019 20:29:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HcbtckUwdaSd+YMbLWol0JwfJBbg9aBXAQzYlZsaJQk=; b=t4r+lPETcOVS3z
	nizdvYlU7AczOpPVskKN+TYGK6nE3FCn4oqJI+KE8kumEPzALt3lJkdkyNAYYNMw8a5KmRPJJ7p1F
	jMh1ZhJ2QziJYuWhwsCH5UpUhfA5kJzsTr/X8f6vABmmclikBdCXKC/5rN1FDWmoE6+22DZvJk84g
	oP9lub0JwB32k8uG7zvDH7WvrhovkxRGfp8yBZ34gjqEh8k3f9Ctl47+nM9MieGbL3MjSKKL6M6Ly
	fc/gQD6IFiKJUvO3d38M7rkEC3jBxD3+OiDc+PN0YHP2/HswvAXeDOA0i2awJOICSZkE2u7tt6hT4
	wZhdiMnrMc6nzRaUlLiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn5j4-0000u7-Vs; Mon, 15 Jul 2019 18:29:27 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn5j1-0000rr-Fg
 for linux-rockchip@lists.infradead.org; Mon, 15 Jul 2019 18:29:24 +0000
Received: by mail-pg1-x543.google.com with SMTP id l21so8121019pgm.3
 for <linux-rockchip@lists.infradead.org>; Mon, 15 Jul 2019 11:29:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4Bs78cyfY3NVUOTscJFg+EkWdj0SkzHYhqOkdIflyNc=;
 b=C8OkKD3XJkG628hopmTctl20OvVdEQeVGzQHRiiwUAsOpdNZHczmFb5YflXdrlmDjd
 wvLEdZTF/6nthdhrb98UdMKyou9tpmwYhPEd0XLS0W1ndpykq1T7rYnPPIgdvbx0ajKe
 eMihoLAnMsQycntWf0mNy8EVlPgK/5k5/ETcs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4Bs78cyfY3NVUOTscJFg+EkWdj0SkzHYhqOkdIflyNc=;
 b=BNcNquTXaasyIsts25XpOFf9qXTRFUghhYbVlA1018tI7CJIfSjqhEq6ZARUX1yEtO
 ELMvDULtv53lbwxne+ZoYQl3fr/Ggw9dMyuzjsEANUnH91qRvWWtMYMEZ9axzOxH41qx
 FlFwI6ssgt3+KTIN37/tbUrIduxMdYR66MJtKPSnnTcFHZSBzlJ0Y1Oxqk2b3rL2MNeF
 K0Y4bX9wgUsak6/WgC5l5SCWr7TrRbczC+0PK5S5Cvc3zmmhP3f6Gfhgl2IR+E0muWyi
 fLtnSopZO1swgwSbFZ5fsBt6P9dQb2SAOgMcpbRhSndSgQAWahZ+gCT8bmDoi8uSUFBX
 KVVg==
X-Gm-Message-State: APjAAAUEuxzMTCZb8DxH6Oz88aEjCpcEud4McnMKbS7735xu2E91Folo
 hFfDi3slPdMDhSHJqO8wF/u9ew==
X-Google-Smtp-Source: APXvYqyldXGeWmdEa2FjCCFoWj5ALWeGYaw5pBp2qf9ArVnEvETkm1LIWFn7K6+zkIoXhXYfIgGs7w==
X-Received: by 2002:a17:90a:ff17:: with SMTP id
 ce23mr30679911pjb.47.1563215362898; 
 Mon, 15 Jul 2019 11:29:22 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id y133sm20250075pfb.28.2019.07.15.11.29.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 11:29:22 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 04/18] ram: rk3399: Use rank mask in wdql data training
Date: Mon, 15 Jul 2019 23:58:42 +0530
Message-Id: <20190715182856.21688-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190715182856.21688-1-jagan@amarulasolutions.com>
References: <20190715182856.21688-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_112923_690497_3486FC9E 
X-CRM114-Status: GOOD (  10.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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

Add rank_mask based on the rank number, this would keep
the wdql data training loop based on the desired rank mask
value instead of looping for all values.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index b98df20fa5..16bd9427a6 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -861,11 +861,17 @@ static int data_training_wdql(const struct chan_info *chan, u32 channel,
 	u32 *denali_pi = chan->pi->denali_pi;
 	u32 i, tmp;
 	u32 rank = params->ch[channel].cap_info.rank;
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
