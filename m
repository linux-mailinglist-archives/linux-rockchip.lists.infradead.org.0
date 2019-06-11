Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 912C53CFA9
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:55:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mRifgjdGZnE8nmOtxd+Xnt0PN7gI+tJtOKS5456+MB0=; b=RXLTMJhN8fdKes
	ncqaVloYEVSbIwkISW+qUlHJuzcLvXVHoHS9TrhY583vS9EUzOf+IW3k6l0GsYh3KojnZ2AuK4rdb
	0gv0KiQuzVcHWrInOxPzCfV29jwZizTDpNbKeQyOfSH42JSc+q2uRNjHDjdv0Fnmpk+qWBLDOheGu
	WDCrzHBdvYJOARm0VGK9ttrpjKcEfXChVetFkFXcgbAUiXkgdn/S9MGFoASYba1a2e+4mJT7JxdaO
	M4FvQRWy7mwfA48714UmNTnnfiWDWOYDGpn2noEdJ7cBG0RsXftgewmIvbz7SeLOecQlJvourw83k
	oeO0fk3/amSmHkit4zVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiB6-0006p0-A8; Tue, 11 Jun 2019 14:55:12 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiB1-0006Pk-FN
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:55:08 +0000
Received: by mail-pf1-x444.google.com with SMTP id x15so7622665pfq.0
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:55:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=p/nbMHgZZiiLRgXry1m/sPwN8GCBFLgdUWXWzFtklvg=;
 b=lOvDBu75deOBAt00M/U1uOdVG68gh0m0poJtt6PhbWrlp34jbCg7Ojt0fNXt1Ve8gy
 5smP+eVJ1/HZRzvKCckaoX7V/wDt8KFgCmdzhB4dnJOURZEKesm2peN/u1u5iay1/zCP
 N8IxGNue8BHTk3TLixqIv+9a4wh26SAOrK090=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=p/nbMHgZZiiLRgXry1m/sPwN8GCBFLgdUWXWzFtklvg=;
 b=LHuGnq8aDup+Sf+wLXQoyqY7RkJTDjz919h5VxBeb2kZ7fkLJOVHwdEJODDHGjJKqp
 5WzGRN53SPcy4Lf8c+NTt+Sdals3jYngliZxhLkGJ6Qg988LreV1m9J+0hIiLNCzGvhs
 wNtp4mbOuR43v/3J7TECp817jb32mNL/rBS/A6FaNp2vzSLQTRAHEfE26qbWcqld2CBP
 w8MVBN5WNrSpCsJt1QHod63d1IdP8f3sDs3tpHyKkLDaQFkNeNNi2s8bFki6ry7sSZWK
 NaMrrciEgO40gSX6a8QD6rsOD7W8SdOR5zoH/pfZUgD6ImvLuLCZyRJYCH4/CE3q0VEg
 daiA==
X-Gm-Message-State: APjAAAWo9AMFEtDmnbPpr+CDg9J9gGeJ084sstxrOJvPRjAzISlf9vy9
 uP+ez3LJQpUhd/ZOduYc6PJYmQ==
X-Google-Smtp-Source: APXvYqxaWjEH81uVgHI7d+jBa79boYsVtoabJXxrIxpNaMnNafxWyuwWRMV0mTwzSjmzhxNK1ydq+A==
X-Received: by 2002:a63:c903:: with SMTP id o3mr9224659pgg.295.1560264906761; 
 Tue, 11 Jun 2019 07:55:06 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.55.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:55:06 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 49/92] ram: rk3399: Compute stride for 1 channel a
Date: Tue, 11 Jun 2019 20:20:52 +0530
Message-Id: <20190611145135.21399-50-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075507_579717_6F26522F 
X-CRM114-Status: UNSURE (   9.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
index 5985c37f08..033b2730a6 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1214,6 +1214,10 @@ static unsigned char calculate_stride(struct rk3399_sdram_params *sdram_params)
 		chinfo |= 1 << channel;
 	}
 
+	/* stride calculation for 1 channel */
+	if (sdram_params->base.num_channels == 1 && chinfo & 1)
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
