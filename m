Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1DC83CF7B
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:52:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0XVixZMTSTqpgag1+aVfjO7tVnLD6VXIUoB8wqLvKSs=; b=eY6ATYILjTtYX6
	ntsLGrTTU8l82PmCiTUFChw3J+epUJIjmoYXiM1Zmh5UMeZhvHp9mpNxNU5vqZ4oAszyVEOCiLd4v
	DnY7RMF1O5tm+mcQY6o3XvBxfKoknsfA0BvDhZhEAjSc8+RMHkgaHExqHLPxvBP0AiaRos+iWv64h
	ef/+f9cfyN5hR1PPQ6CkCMxlOhfVKCUgeYMnsN+pQA/68QQN1k3gCbcExfpo8UH3knfHys4Sq0Aot
	nzdrGfc9lPvK9Ae0Jg0bN4XoUrUmLAOqs9Z0WJHU1OtX5BCAYbHf3OrRepTVpLLASbV4rZQSbxX/P
	fO7Z2lL/C+OVf8AaFRhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hai8R-00041n-NR; Tue, 11 Jun 2019 14:52:27 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hai8N-00040J-OH
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:52:25 +0000
Received: by mail-pg1-x543.google.com with SMTP id s27so7115466pgl.2
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:52:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sngFIrXhys8b3WKcTJYD5YX0xO4WB0Npd+TKfw+qcNA=;
 b=QfOlqpTux6VITTyIoI/FdyXwnBruAxyoO9wRQKQ/q8KCmnhkwDL3mvCQ1/13zRxLf8
 FySwBze0IYigw8CvNtqw9ySkdBal/V8dk6Wf6YatyOmRQ/Gq/uoXgx21gBnPcN7QIkiG
 lpJrA2TchrsMIadxQ7nxwWVXKavM2G1aDqz0U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sngFIrXhys8b3WKcTJYD5YX0xO4WB0Npd+TKfw+qcNA=;
 b=G4ckWDvyrtD2/N/cNiTYHyUCKKfeVj/w7Gu4nsu9KtiCEXxSSE8MLUtRYJS4lRdFSO
 nnjLCi6XJ1R3mAkao1qe1YPbe2ZRD/po745bpyi+DD3ovA8ocEpomc+bMZGjdLiCSRGi
 4Qv11eat6fY3qtxOmJcVuhPwTDgJBvw+WxcXDhHi9n/jeqH1WyaOBXFytDZpXy1fapDE
 fHARBNQsC/J4yGm5BREwtLB4nq3IcSNiDF2A41IT07SNSRF6WYCd8UOogRJVJoIvD8ix
 hT5mrdxIZhsotlfeBsgKUs53uaeB8/zLkwUQGDN/9qL7Fyijs21uPljQrinJrklhQ1Gt
 utOQ==
X-Gm-Message-State: APjAAAVmXPSwiaa84mFNeM7u2acNlU9Ik5vqHk9xxJk42bFfcxN81ZKV
 UJM7oJoX3XGrrEMZIWLIsBLJXBuxVQI=
X-Google-Smtp-Source: APXvYqypxtuwH6vVE2OZP7pmuxjFbxv5uLjbuCwJgYjFANzI9ffrQB5h+tBWb7DLSquks4Y295XdYA==
X-Received: by 2002:a17:90a:9a8d:: with SMTP id
 e13mr27627279pjp.77.1560264743166; 
 Tue, 11 Jun 2019 07:52:23 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.52.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:52:22 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 08/92] ram: rk3399: Use rank mask in ca data training
Date: Tue, 11 Jun 2019 20:20:11 +0530
Message-Id: <20190611145135.21399-9-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075223_887609_8A247607 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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

Add rank_mask based on the rank number, this would keep
the ca data training loop based on the desired rank mask
value instead of looping for all values.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 74392076f0..312d19f95f 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -617,11 +617,17 @@ static int data_training_ca(const struct chan_info *chan, u32 channel,
 	u32 i, tmp;
 	u32 obs_0, obs_1, obs_2, obs_err = 0;
 	u32 rank = sdram_params->ch[channel].rank;
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
