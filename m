Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E485786A3
	for <lists+linux-rockchip@lfdr.de>; Mon, 29 Jul 2019 09:48:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dX2tnaGUDoTAVLinPlkir1B8VQPbPFHeQ0ty2eusUuk=; b=R8YcpeEYt9h6EH
	XTTdFGXKX7ahEFq8XZD718xennM6lrBIduTqYf89o3Mut3HFCj2RXA2OMxjMijAF5N5vR8xtf91pV
	lenbYSs+dcuvnM61VtVL3X58yCp0CVmgfBEiQc/mQ9szuK9ww+dDSdUVUJQWDbN0sQZAMvkqtIr+8
	bTWOShtjXHtA4VIcwb6LXwIfctptmwQLNYCMd47VsokDzHUV6i7WaOoDJyLLpu9LQRzb96Wf7jek1
	6WJK0CX/D7fr9SGsNut92aP1HSSZD5g0T5bZeNZHPqljEJDwO3GwBXUNGdtp9sbGg2C7MqgUxPsV1
	JDwQVNo0lLncv4UQfpeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs0OI-0002w1-8N; Mon, 29 Jul 2019 07:48:18 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs0OE-0002nf-9p
 for linux-rockchip@lists.infradead.org; Mon, 29 Jul 2019 07:48:15 +0000
Received: by mail-pf1-x444.google.com with SMTP id u14so27601410pfn.2
 for <linux-rockchip@lists.infradead.org>; Mon, 29 Jul 2019 00:48:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=o7CIWIRFdW751SnjnqsVlk5xcbVjSz3RZofqr0wVIcY=;
 b=gmrxZe8jotnJVIJnHJbVvHrTpbhM04oGl4ZyWqB3xuf4LNTrnzZCDyPcI8dLQjud2G
 cc+bDjRM3IGuJT1z+xYPyDp6G2tqenoYmpU+BLyiMoTfS85qu/SC6Eeg6Cj4vP8aEKV5
 5cibkyJCWACwyfIlEbqvKxJqQdlYBVLfIWZlU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=o7CIWIRFdW751SnjnqsVlk5xcbVjSz3RZofqr0wVIcY=;
 b=NbDkjarpwjxXXWN9PAiOGHYA3yua8RB+mQ0K/bF1WGbLkC21xXt2drpkkzgGS/kvns
 fIGtq5ff6OC+UMjB6Y1W6sVCMl4b0o5qEpvroYT5K9cp/hs0ex8r/4pcUdtYv20SXLXj
 Z7JzhZgUcnrCSGYKmsG45jfoXwat5N0mfsNQm1Ge+Ot6qJhQ8/dsmeDjF5yHMqre37i4
 awxAuNimJCct7sAG0iNyyx6AD/AB9her7lmtNncAuYfvRI7tknFnUcFrlHyfWPH4I5/E
 sCbDSdESEzwbeIFwEIX5SY5BPSuXGXDFTIJZRvbS/9qsUu0oZdy3AWnfkXj+25k2lHf5
 YSWQ==
X-Gm-Message-State: APjAAAVbAfXz46/WhiPfGUUYIQ2l+yM37jslcuuV41FGhCHLEME3u8So
 4pxFu4qANrNhn1AZYi1CZZ3MqQ==
X-Google-Smtp-Source: APXvYqw+t67A3+soEwfQa7CnwhZqhgfpcfBNXEJVKaR1hHQl3CsEaUzilc9zqidKcPYi4e+TuV/+8A==
X-Received: by 2002:a17:90a:360c:: with SMTP id
 s12mr112293213pjb.30.1564386493822; 
 Mon, 29 Jul 2019 00:48:13 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.41])
 by smtp.gmail.com with ESMTPSA id h14sm75723348pfq.22.2019.07.29.00.48.10
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 29 Jul 2019 00:48:13 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [DO NOT MERGE] [PATCH 13/15] rk3399: rockpro64: Enable watchdog
Date: Mon, 29 Jul 2019 13:17:09 +0530
Message-Id: <20190729074711.16988-14-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190729074711.16988-1-jagan@amarulasolutions.com>
References: <20190729074711.16988-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_004814_433871_AEDDCBF4 
X-CRM114-Status: UNSURE (   7.06  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jagan Teki <jagan@amarulasolutions.com>, u-boot@lists.denx.de,
 linux-amarula@amarulasolutions.com, Akash Gajjar <akash@openedev.com>,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Enable watchdog in SPL and U-Boot proper for Rockpro64.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 configs/rockpro64-rk3399_defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/configs/rockpro64-rk3399_defconfig b/configs/rockpro64-rk3399_defconfig
index 32d8415b23..f604ccc1ec 100644
--- a/configs/rockpro64-rk3399_defconfig
+++ b/configs/rockpro64-rk3399_defconfig
@@ -55,3 +55,5 @@ CONFIG_USB_ETHER_SMSC95XX=y
 CONFIG_USE_TINY_PRINTF=y
 CONFIG_SPL_TINY_MEMSET=y
 CONFIG_ERRNO_STR=y
+CONFIG_WDT=y
+CONFIG_SPL_WATCHDOG_SUPPORT=y
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
