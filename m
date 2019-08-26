Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB4D59D5BF
	for <lists+linux-rockchip@lfdr.de>; Mon, 26 Aug 2019 20:22:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cYJ64JF/JDA0bKaRbjs2+vX2VZ61XRdVAlKE4+YVTLY=; b=X9oaijYUDIvA8v
	rk3lo2mgAGcTHUMT6oxW7cfPBMNGL0m9H4XeoR7p2/BkXClPks4MRjYtFe3FbidIrulQpTGgiI0Ot
	ojg9e8z84L00NKHGvozVlq/gmeJoQ61OL3E8NCLbqI8qHGH1/wahxK2/cc6Nz22b+O/3yIi/zCEvz
	m76PAkDOIZBf2lkCgZtjYvFEl+XVXNoA7TCXpaVIHAuFopWlxMy6qA2QbIoZeYNZh2W1MiiYSK+rs
	Q0ajlwQFQRjVr4MoowCyPWGtYQbaXAffOhZqtLGWt6gCaxEc4uetVN1+GhaQAY8sCbHA2JNCpfmdg
	pvUpJBgW6M4qi/TFe24g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Jct-0001sj-IM; Mon, 26 Aug 2019 18:21:59 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2JcX-0001Ww-3v
 for linux-rockchip@lists.infradead.org; Mon, 26 Aug 2019 18:21:38 +0000
Received: by mail-oi1-x241.google.com with SMTP id n1so12869825oic.3
 for <linux-rockchip@lists.infradead.org>; Mon, 26 Aug 2019 11:21:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PTRnUv8J7zEq+X2sNjg1iCIdKlVO2Xf4T9bpXqnekG8=;
 b=llqXD9EtoX9u3n83kkKg2fbW6FP7nS8xt1QJxXn8rwjuiiSC9quzy8p5iyubtQG7pv
 het+l0SANcbzzaQWP44Tq6cc3VZPT0U6F7aDcmlZrYLz8m2HYqMtOxxb7YaX7z6Socyi
 Db2mMUQFBx9+awO5dF459vdXDplOI9Kyd8DbY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PTRnUv8J7zEq+X2sNjg1iCIdKlVO2Xf4T9bpXqnekG8=;
 b=M7iF9llmW9/GAn2FcvB6+OEWjznDTGrRqCT2ts29nEz6sKWyn6khvmcL0WbwXFedMq
 xxP+ctuDtY2tQE1S3xOvAoguq0HmWMs/RixQA6sOMwewQ8DQQmBDJBjGfDhyJXQXnjrc
 pahBo1K7l6+6yfGEHGGEnvVQx4yn/o20r/yXX+c16eoDnHAv7gdLkXG+7v4ghWPuBQ+U
 fOj1gb4gNckipOSQdKZFU0JPd7cP/gqe6BypeRkuTUWOeCk13SOb8KJfSzTdy5etwtrK
 bPWQ2Lc2LfSEiT4KWpKD1NlLVcuG16nMvRY9vZLpkvnDP9Xgxr1zG5BY6BFPhh/eXe2x
 pu/g==
X-Gm-Message-State: APjAAAVh62788x4Kt6v1EWfGfd6O5HGt9U3qLqUQV0+BefqKKe/+Imge
 hf9xMForJzR1HIdzuSeapFZnhQ==
X-Google-Smtp-Source: APXvYqws+Aw+ZpimBFGouRIkRGMdJl/3ETcr/DyXWgZwBh9FfyfZpGtZUVayfYqAN4cnuh/Xb9/P4w==
X-Received: by 2002:aca:3c1:: with SMTP id 184mr11811619oid.113.1566843696436; 
 Mon, 26 Aug 2019 11:21:36 -0700 (PDT)
Received: from jagan-XPS-13-9350.attlocal.net
 ([2600:1700:7430:38e0:d5b0:4823:33c8:5e46])
 by smtp.gmail.com with ESMTPSA id c11sm4401461otr.54.2019.08.26.11.21.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 11:21:36 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [DO NOT MERGE] [PATCH v2 14/16] rk3399: rockpro64: Enable watchdog
Date: Mon, 26 Aug 2019 23:51:09 +0530
Message-Id: <20190826182111.30999-15-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190826182111.30999-1-jagan@amarulasolutions.com>
References: <20190826182111.30999-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_112137_170806_8A670D96 
X-CRM114-Status: UNSURE (   6.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
index e05ea3e186..5ff38efa53 100644
--- a/configs/rockpro64-rk3399_defconfig
+++ b/configs/rockpro64-rk3399_defconfig
@@ -55,3 +55,5 @@ CONFIG_USB_ETHER_RTL8152=y
 CONFIG_USB_ETHER_SMSC95XX=y
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
