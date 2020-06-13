Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E87E1F853B
	for <lists+linux-rockchip@lfdr.de>; Sat, 13 Jun 2020 22:52:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=cddKAateSMEtCmuCLF42CdywY95SU51M8nPLUscDOfI=; b=jt6
	JH8K0qSlDjTXmetlkGynlYmYsZR77lseaqixgVCcAgqvky0e04LnzjHvR7ZF6KVsC/ay+lYktU86k
	KJH5L5c3klWScuxymwESAgaEv1ojAhwFBxmsARqEvtBA/fM5b3mlzvMt5ESBz8WCnFOb+4Ivpi1Cz
	T05URegvgFHkGIxvNd8D3q4+7lZOrcMIZjWm7MMBoVinOq6mtqGyGCdq/ls9FaXonjBSX/6Geg5Kb
	FQgqNVF0F5DDmRZG+z3+zl1hJ3rwJOxRZGHe12eaR7Vn8RFnGaeftr8hnfBk0GOtzbwlb/FpWZQJH
	wZJ5lfsBHSA+aaRP6+T8Gk9ycRrx++w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkD8S-0000zV-Ut; Sat, 13 Jun 2020 20:52:16 +0000
Received: from mta-p7.oit.umn.edu ([134.84.196.207])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkD8O-0000yO-Au
 for linux-rockchip@lists.infradead.org; Sat, 13 Jun 2020 20:52:14 +0000
Received: from localhost (unknown [127.0.0.1])
 by mta-p7.oit.umn.edu (Postfix) with ESMTP id 49kqXR6SWxz9vYkD
 for <linux-rockchip@lists.infradead.org>; Sat, 13 Jun 2020 20:52:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at umn.edu
Received: from mta-p7.oit.umn.edu ([127.0.0.1])
 by localhost (mta-p7.oit.umn.edu [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xsB7gaH7h3M9 for <linux-rockchip@lists.infradead.org>;
 Sat, 13 Jun 2020 15:52:07 -0500 (CDT)
Received: from mail-il1-f199.google.com (mail-il1-f199.google.com
 [209.85.166.199])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mta-p7.oit.umn.edu (Postfix) with ESMTPS id 49kqXR4pBQz9vYl5
 for <linux-rockchip@lists.infradead.org>; Sat, 13 Jun 2020 15:52:06 -0500 (CDT)
DMARC-Filter: OpenDMARC Filter v1.3.2 mta-p7.oit.umn.edu 49kqXR4pBQz9vYl5
DKIM-Filter: OpenDKIM Filter v2.11.0 mta-p7.oit.umn.edu 49kqXR4pBQz9vYl5
Received: by mail-il1-f199.google.com with SMTP id i7so9128783ilq.16
 for <linux-rockchip@lists.infradead.org>; Sat, 13 Jun 2020 13:52:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=umn.edu; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=UkcroixAl0qAjD6GgNgyzou/IsN1STk9p+xVVDcmeP0=;
 b=Ardg8aLxFj2jA4QjL4csIbDmbF7Qv6ioBUq9BFwPAzpqdsP+ivgI2B8v6vEDSmF5Kq
 T+VI+cMiJyrltzxL2KJ+S2WHTXIUF/tzDx+Hy6iiCbHiebDtommqrsorIxWsJtD5Xxfl
 rSzCIoMmPWNRk35WVAw7LbUcN+FwnWoL2ov7l39z+On9rB0EWpXx0pMhwvIoyqrXUaxN
 SVjXxR5F+7oT+/CflVUIQ8BF6ijShRJTLfKceESF3Hx+zZ8lX0oXaFdA9bCViMHOZw8e
 x1Ek4ACuuHNQSXcdq2kYUQsZrqkPdIsjq0SIXmIxXnf4IToCmyoJ83/4UJ3PDAddESUD
 Xw8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=UkcroixAl0qAjD6GgNgyzou/IsN1STk9p+xVVDcmeP0=;
 b=e29+63q6W4SRe4fCkPUVFcHwGzo/9c+kbYmwAA7TAGU/hpd3zWDLUt7NvutphiIWZK
 K2p9C3FAd0myM5YFvMzDS48D4Q0A4LNWuDBQ1lWS6GdRBwyDb+oIVCEy48g/U6Mw9IGb
 j/NBH+KJieTNnS9c20WaDgFfcZ1OzSb9GPjJR3jWV/6CGbb0BYBiVn2XtHfa1Mbynits
 LTGshc1udRNOWi5/X9RrxvGz+2GOAYTMafQci0gp/iwbC3I0Wn7L2ZQTBMEJuXgOQ5a0
 yZM/exjmKXckHMYTikG8OaN4crr0TkYp9W0gYtHXg3WrB1hvfNK237Uqg28WazHlZ+xE
 Njbg==
X-Gm-Message-State: AOAM531ALsaTs7B7L9gWi9kwzlDS9yQhkrKpMzD/57jRyb2L/hofswrb
 9bEJyfRDnrmA1KcWYbpmoO93ri4EBuNDBYaF+7iynziLZp9gpfpHKo3w6tCHqs4rQ2SFZ6GAP1Q
 v5Yh0BH9uOwQ0Dk7xIaiJKOJQ7/0uQFugSxB2
X-Received: by 2002:a05:6e02:542:: with SMTP id
 i2mr19700877ils.203.1592081526450; 
 Sat, 13 Jun 2020 13:52:06 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyWlEJFk6HoO+GE9Acy8SKo/fFC/orEpAve7+rluozITdaEPrSwu9DbTGUy6wx6oKsMcR3TDA==
X-Received: by 2002:a05:6e02:542:: with SMTP id
 i2mr19700858ils.203.1592081526162; 
 Sat, 13 Jun 2020 13:52:06 -0700 (PDT)
Received: from qiushi.cs.umn.edu ([2607:ea00:101:3c74:4874:45:bcb4:df60])
 by smtp.gmail.com with ESMTPSA id c1sm5138369ilh.35.2020.06.13.13.52.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 13 Jun 2020 13:52:05 -0700 (PDT)
From: wu000273@umn.edu
To: kjlu@umn.edu
Subject: [PATCH] ASoC: rockchip: Fix a reference count leak.
Date: Sat, 13 Jun 2020 15:51:58 -0500
Message-Id: <20200613205158.27296-1-wu000273@umn.edu>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_135212_462112_CBD2F2F2 
X-CRM114-Status: GOOD (  11.83  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.84.196.207 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: alsa-devel@alsa-project.org, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, Takashi Iwai <tiwai@suse.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Sugar Zhang <sugar.zhang@rock-chips.com>,
 linux-rockchip@lists.infradead.org, Mark Brown <broonie@kernel.org>,
 wu000273@umn.edu, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Qiushi Wu <wu000273@umn.edu>

Calling pm_runtime_get_sync increments the counter even in case of
failure, causing incorrect ref count if pm_runtime_put is not called in
error handling paths. Call pm_runtime_put if pm_runtime_get_sync fails.

Fixes: fc05a5b22253 ("ASoC: rockchip: add support for pdm controller")
Signed-off-by: Qiushi Wu <wu000273@umn.edu>
---
 sound/soc/rockchip/rockchip_pdm.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/sound/soc/rockchip/rockchip_pdm.c b/sound/soc/rockchip/rockchip_pdm.c
index 7cd42fcfcf38..1707414cfa92 100644
--- a/sound/soc/rockchip/rockchip_pdm.c
+++ b/sound/soc/rockchip/rockchip_pdm.c
@@ -590,8 +590,10 @@ static int rockchip_pdm_resume(struct device *dev)
 	int ret;
 
 	ret = pm_runtime_get_sync(dev);
-	if (ret < 0)
+	if (ret < 0) {
+		pm_runtime_put(dev);
 		return ret;
+	}
 
 	ret = regcache_sync(pdm->regmap);
 
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
