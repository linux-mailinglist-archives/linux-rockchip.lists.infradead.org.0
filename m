Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 730A61B85E8
	for <lists+linux-rockchip@lfdr.de>; Sat, 25 Apr 2020 13:04:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=c7mlIiEUtim1caJbQRQZi6syRNDTib0nkZplzfSYrYw=; b=HfsgZUJDYBB+SWPhwMNLe08Eog
	PpQfRSS9niAVBTVW2vG8qYrYxhy7OrqTsIISxaCTsUtBjIky+J23++piwoABrQ9ONnuASEv+N+L8o
	xHUKJtNO3nUlNpYhS7vwo/LpWN+vKSvnCRUeNPizCfT7PHx92df/LwU6s4uRyue/aVQNEvRsqD0Rc
	x7mH4BNTkN4QiOWoRKW5ra6BPX1vgXzt40/LRdMGDrQDNDySyLdQahgPR5e1aWFidEYAVSST5oqKY
	dDWtDHQAuFcPYWmfLX1sKdP+AdkAymngvdGGEwT+l7zPZjkY8YIofQ/TC1UdKCOyfOzDoP+H9wtop
	+Vr6sQ7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSIbc-0006EZ-OQ; Sat, 25 Apr 2020 11:04:20 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSIbX-0006Bg-LP
 for linux-rockchip@lists.infradead.org; Sat, 25 Apr 2020 11:04:17 +0000
Received: by mail-pl1-x643.google.com with SMTP id f8so4764842plt.2
 for <linux-rockchip@lists.infradead.org>; Sat, 25 Apr 2020 04:04:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=aUlll32zfX7ITjPFpHp0Q7B45yE/EkgzuSyxmyuDIG4=;
 b=fmtndGht98VRcHXWfF7QCXr8TOI6odhZW0oC7i08FSJt2dqYWAbD+9uBPaTKmAWQJ1
 B6PPyoqFXlaxP58ix+lIIHVTxLiknpqdTcrLNtCdiUoEPLk8vp9N1E7fdGe3eAqFaIfM
 /vB3WJCNbg/kSCp114wdfWcdkHBKi3hKo70f0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=aUlll32zfX7ITjPFpHp0Q7B45yE/EkgzuSyxmyuDIG4=;
 b=AC3Q2zBEEDWZblQr0fjt7n3kk0LAjWIA9UqMrLMKhv2bdL9kG2wDRymtzTIiD2H8GY
 5X8U8cYMJ9I49f2YbCqfb1bCXURzy+HJs84SJvy9Tbvqdnaazh0CzA/S6wG0jCQdJJUp
 EY0yMCGyG1FQNZ0Y8We0Ccj7MYUb7g0YQZN+n7oPFj6Xei+VQTzBNsBWTp3w1vGQn81B
 AizWKXjTy3y4j8seMSkqaJZL2ddYJE6IFr9o9LDDCQPmApqYL/BdZOG9UHQZXg+ssusK
 zjJzsCIRdTHmofsjOAL54AoVzuHU5+YTv8WKYOaNfKy9liKxZRguWF9wSVAItyI7gamH
 ow4A==
X-Gm-Message-State: AGi0PuZbyrR9gt7om065hXjeGa4AUIj3ET23UHMo18Fb+gw84ixVlaYf
 fqd/18HE/yEKOlvufrkVdmZhtA==
X-Google-Smtp-Source: APiQypK51i0FDxqCDDImRWZd6WKpeuk4qW8Un2LudQff+b/SR5//SIA1eFSEHxYIRnXdROiUXpP5qQ==
X-Received: by 2002:a17:902:347:: with SMTP id
 65mr13880569pld.21.1587812655032; 
 Sat, 25 Apr 2020 04:04:15 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:1d46:fa69:c34:93dc])
 by smtp.gmail.com with ESMTPSA id
 v94sm6922831pjb.39.2020.04.25.04.04.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 25 Apr 2020 04:04:14 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH 2/8] iopoll: Add readl_poll_sleep_timeout
Date: Sat, 25 Apr 2020 16:33:48 +0530
Message-Id: <20200425110354.12381-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200425110354.12381-1-jagan@amarulasolutions.com>
References: <20200425110354.12381-1-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_040415_693509_150398DF 
X-CRM114-Status: UNSURE (   7.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Tom Rini <trini@konsulko.com>, patrick@blueri.se,
 linux-rockchip@lists.infradead.org, u-boot@lists.denx.de,
 Jagan Teki <jagan@amarulasolutions.com>, sunil@amarulasolutions.com,
 linux-amarula@amarulasolutions.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add readl poll API with sleep and timeout support.

Cc: Tom Rini <trini@konsulko.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 include/linux/iopoll.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/linux/iopoll.h b/include/linux/iopoll.h
index 0bbd757939..e087f23271 100644
--- a/include/linux/iopoll.h
+++ b/include/linux/iopoll.h
@@ -42,6 +42,9 @@
 	(cond) ? 0 : -ETIMEDOUT; \
 })
 
+#define readl_poll_sleep_timeout(addr, val, cond, sleep_us, timeout_us) \
+	readx_poll_timeout(readl, addr, val, cond, sleep_us, timeout_us)
+
 #define readb_poll_timeout(addr, val, cond, timeout_us) \
 	readx_poll_timeout(readb, addr, val, cond, false, timeout_us)
 
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
