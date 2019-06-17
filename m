Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F89447B13
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:36:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pCR+P+MHOpXatnUh3PcKa0j4J/19oDtWaoQ/+XizSZE=; b=FxY/u4dsZTCifv
	N0d9LjsuTlGjk4psJNiDFv/u1qUYeHwFHpLhl5zf7ijnUoJWk5TYtiBZLpBtLfUxIw/Yzbqv41kjH
	349q0T4FT+KL/fAy8Qsd21sosDgZ+jIe6mL+rP9Y6sO//DriRNvxHwb3KLXFRQ6FtrlYZGX+MjLJn
	d/JPsk6Gq2yjDTtpPsT84txwuWfliK3cX069NCtWT8LkWrNauxJbwvC1zNhbeD6WkNHQbpXU/WHzd
	QSZOU40Q0KvOY/e3hvMXXZIUMSBtf2JsSm6rQn8ZQ3HKThQFd31yNykNPGdxFO4LhvatO7fJ/AjWa
	1S1cY4yasH4Ryg6i1KaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmCF-0005OM-7Q; Mon, 17 Jun 2019 07:36:55 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmCB-0005Ls-Fd
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:36:52 +0000
Received: by mail-pl1-x642.google.com with SMTP id e5so3709323pls.13
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:36:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nC9utFX1vjOeZbcwhD/GIiCBQyEPpB/2j7MOLoKj7SM=;
 b=gWQaAEoakVJsOEvM8Zj9KoxY15dqERG0PkVG73THPA8M/vpZ0uvplOflJqcZ41ZZYR
 W8yxVhn+xVIg2iX9NiqBu3fYbwmewRZRoMLxOkySxfWUd6Avn9A/636WZQXsd/Eo+Fm4
 I5i7iG991j/GVSg+PBMYwaR3Mz68c6PHQ8Bhs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nC9utFX1vjOeZbcwhD/GIiCBQyEPpB/2j7MOLoKj7SM=;
 b=d1DX/T0Gs/nJCRwOVeygL1hgaYLOv4Ozr4ybjLUEnc/kTNYGp8Slcje/hFg78Ynge9
 VVNQjINeCPAX8+hm7CuWCod435abfmbKElwZsEP/Kwfy7LAFmYga/YhJ7tmpWJ7qFeix
 7SJexdC5MSvPS9t6Zqn1gOUsVcWtLFhNUUv7zFb44tMq2lqBaC/yOhT5NjsxITtGRin3
 +Hb4wuPdc12aKS0Lwoq6kKvqLpAk21NhfjJ3DvW5VAKSC/677exb2Kb8ZMlRfRgth5a1
 729tMvdwXwjn+MLAPdL2/8ijsoBFXJD6pkD/zvrV+PF96fu6GUPFi39lSzyH9GRA6HVf
 eHEg==
X-Gm-Message-State: APjAAAVK8vUxLA2pBOcwwE2ISnJpDTPLw+kDl6xi8E4kMzX9Oo3lHjNe
 oEXHEBiD+A/AOoVoocDc2kkoqA==
X-Google-Smtp-Source: APXvYqyszuoVbPhc/qAWjIYAqkFNZvFgh+/4Zr9Yqmjkh3GeWzayUxySj8npDuM0nPWQ93FcuoKfRA==
X-Received: by 2002:a17:902:2884:: with SMTP id
 f4mr19883748plb.286.1560757010822; 
 Mon, 17 Jun 2019 00:36:50 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.36.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:36:50 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 09/99] ram: rk3399: Use rank mask in ca data training
Date: Mon, 17 Jun 2019 13:01:22 +0530
Message-Id: <20190617073252.27810-10-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_003651_666779_84F15D35 
X-CRM114-Status: GOOD (  10.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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
the ca data training loop based on the desired rank mask
value instead of looping for all values.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 1898466b4c..76d6440f9a 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -616,11 +616,17 @@ static int data_training_ca(const struct chan_info *chan, u32 channel,
 	u32 i, tmp;
 	u32 obs_0, obs_1, obs_2, obs_err = 0;
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
 
 		/* PI_100 PI_CALVL_EN:RW:8:2 */
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
