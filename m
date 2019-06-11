Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C2FE3CF7C
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:52:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yZIVscJInMt5Sf2gY/60W9XyiaWDSx0LV6oos3wTVN8=; b=CNei1sx/lmjVfj
	vHoWW9yOqt+rPIeL26QRs+8qpibi43U2M7X3tbdjpVUPAmZNOW7alLJ/t/P0+OlXwWMw4JvHQ29mA
	yA1Zr6LGOGVcERCsMqG94BkxW2sW9Mqwzg3BjzlpFbScxwyAjjOZ/yAdf4ig0INdqKuqrN//cKYtB
	hHEWtPAdnqBdGyvm3nXTHc2BV9mri1kVvLQikvbiXmgbuYzwAHaVpQbVPUHpGWAQXHR25QFhKKXVJ
	vj6tj90AA57Wu/igyRW8ZRqnk9AG6YCT4EN/ZUdbUWCG8MLMPMUqb7pAYBBbsM2izg/vWsvKZjjGL
	eB1vjmzQr2ilJSfsuU0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hai8V-00044k-Gs; Tue, 11 Jun 2019 14:52:31 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hai8R-00042M-FI
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:52:28 +0000
Received: by mail-pg1-x541.google.com with SMTP id f25so7101789pgv.10
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:52:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=X2Tg3fSi1tlmN05lpvTCv2jc3ixEGMinJbElbSaFifU=;
 b=mAlzsXU1Jkyx0fvQFyo4mTSY1gaW3aiJrrG+N4DYTIhRosttSxWcQoiH1v4HXxc+7h
 +iv/hN6jG8ufYhITxz1QIxxiUx39cO13Jx2YB35sjh8tUU096+HVi4IUNKCePb5F/whU
 Oqm+Ni97fHIDXGFdDWU/pNBZjWXEHOSAzylZQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=X2Tg3fSi1tlmN05lpvTCv2jc3ixEGMinJbElbSaFifU=;
 b=RZCkYXIcBOrwLY69deShjo79J2Wr8vqn82vw+UCM8rE6+hUL6T+9fxlezzsryK8xes
 VhQgdkzbdkEsSdJIt06u2gJcbxzfF0yBreerNkOyZbgm8jPmN/Y46eyGui1LkuabXXNp
 qe1H46V/T3GLTg0M7ioeQk1hcY+Whmq6QmSbXMQ5WW9m5TBJRW0zFD4ksCAme6WRZfl7
 qL3GjkfY3JGEzvABH9pbdRPOWOPENB3GbDKIrhO0Fth/LS/ew+5I0dvD3LNJaingJxOS
 zjTCt1G43LSAiRrIVuS8C0tJGJCBF1vb+hkjuXOLNFjf9p0pDArKL/kM1LIqqlaIXTdk
 is/Q==
X-Gm-Message-State: APjAAAX4r9IbDjqDwVQ1Bv9hhxUbC4URZbXyYf5s3b0ZMY4la2ODEkAZ
 riphnuIQNg1kaPAr/sHxGubl8Q==
X-Google-Smtp-Source: APXvYqy8dJNiS4nBAbCZWWGl3KT3TzBwrQ/8RuKCnDhtgp60kHahtsAR26JdRlRBdn418ppZyWPr+Q==
X-Received: by 2002:a62:5587:: with SMTP id j129mr80331322pfb.45.1560264747011; 
 Tue, 11 Jun 2019 07:52:27 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.52.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:52:26 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 09/92] ram: rk3399: Use rank mask in wdql data training
Date: Tue, 11 Jun 2019 20:20:12 +0530
Message-Id: <20190611145135.21399-10-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075227_557418_E00E8925 
X-CRM114-Status: UNSURE (   9.79  )
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

Add rank_mask based on the rank number, this would keep
the wdql data training loop based on the desired rank mask
value instead of looping for all values.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 312d19f95f..1541b34a7d 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -852,11 +852,17 @@ static int data_training_wdql(const struct chan_info *chan, u32 channel,
 	u32 *denali_pi = chan->pi->denali_pi;
 	u32 i, tmp;
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
 
 		/*
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
