Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EACD138432
	for <lists+linux-rockchip@lfdr.de>; Sun, 12 Jan 2020 01:17:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QUsnMypa5eF1+/RIZuYuO+pWRK+fplaYO/eWcns6pBI=; b=AuPIVVA5UCpQFu
	siyqXgOcvdmy02ztbtm/NG8qXHxgEU8OYjS0tgdbZmMH6XmSgwpAhjdMkwDZoUO/yMsZq+qXtsA6C
	ff1CGZGwIz/IfnrDDQh7JFUMi9Fg7RSlOOaNGYur2FPXf3GQJi6yAx+Um6v2S+BmzKvzAfwWqBf7z
	Bgpo9Fw+cpuBBIup/NSO9kDHVZf4KfWYZzOLUgVN9ECAlV9RiSYVJEqkx+ygQxYjoZDvRUmopE7ef
	AC7zHnk7WHN+JJz/LiUabWWpiYfE55hXZyLVL0R/pVIbY5f2NncDrKOmINzq2YhxjsMVxvysBAKTw
	wKB34jscoJw4uZQhfj0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqQw7-0005nP-UV; Sun, 12 Jan 2020 00:16:59 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqQvv-0005cu-Bc; Sun, 12 Jan 2020 00:16:48 +0000
Received: by mail-wr1-x444.google.com with SMTP id y11so5191330wrt.6;
 Sat, 11 Jan 2020 16:16:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=u/ZwSehH+63Wca8LW+bRhFH9IjAyR/Srx1YNfx4JoKc=;
 b=vFu1zH2Ow9/UtMn8FnIkbj8ye3ZG0bOu0Pf6UW3FtStq7LsxbfNrGKZexZ8gMh+R3w
 LIFytqdtv6aLFMhHeEMrc3wpr7jrdElrel5sEauFkNVjRiOfrYvXTw8u94Lj+OurjBdE
 +OfJby1/+M3z4Bp8z9LZAu6r8bTmnQPnIjvZo7ZZeipiwHJGdmNSgyLu8MW7mpmb+C2K
 BCWoY1HHgjKoR2IQ9afeWq0GbqEQWj+QiIN2BMh7MK8XyJl1gJqiMDAc8AqCo2c2d4X4
 h7wpI+lzeFs+ODa6SRFF1+RffGHidTfLvHQrdHfRWFJ/EnzEfTTrE7pAIiJ9u5jGekbg
 yf4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=u/ZwSehH+63Wca8LW+bRhFH9IjAyR/Srx1YNfx4JoKc=;
 b=os0+HmP28uDbmO7z9CLJI6H55y1z04F1Q6cLUKksFM4VFCpREz9u5LRXVjLO7Iofx2
 rRx5KOxevHxx6lZSuMcDnnddG38pGMw7H7H3mRlaOGfR+tzvd0LkIjnMDX9QFH29L72y
 Saorr7okOajKENrM0FrC6DIqlb6cOLFHtQTuEXUB3TW3WzHgahcsDXzPsmbnKReN22jF
 AVZScx2qvDcLdXF4Tcb2REjTC7klQH/P68beVD+EO6P4zhViluT9RYK8ytFompgT2h6k
 Gq9Nx5CHprU7wu3xhkd/Oew3NCJtUmgCqBBcZQlNEj5MoNonqtnQ1G2Moy0tcCWXnJFU
 4k+g==
X-Gm-Message-State: APjAAAVl9GnAL8ur71MSof8T63WCWBRz8TObP9MxAI13IlU9lmE5ZtDz
 C4xHEeIdiqa//XGIvXkFlMc=
X-Google-Smtp-Source: APXvYqzhBnH1QtVtoGevRNkruEHHQpOM3dYTmLALFHsUQVXGJIlv0gbK5NlcKnKn5cWW9AvIFcCrJA==
X-Received: by 2002:adf:f78e:: with SMTP id q14mr10672631wrp.186.1578788206180; 
 Sat, 11 Jan 2020 16:16:46 -0800 (PST)
Received: from localhost.localdomain
 (p200300F1373A1900428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:373a:1900:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id h66sm8575535wme.41.2020.01.11.16.16.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 11 Jan 2020 16:16:45 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: dri-devel@lists.freedesktop.org, alyssa@rosenzweig.io,
 steven.price@arm.com, tomeu.vizoso@collabora.com, robh@kernel.org
Subject: [PATCH RFT v2 2/3] drm/panfrost: call dev_pm_opp_of_remove_table() in
 all error-paths
Date: Sun, 12 Jan 2020 01:16:22 +0100
Message-Id: <20200112001623.2121227-3-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200112001623.2121227-1-martin.blumenstingl@googlemail.com>
References: <20200112001623.2121227-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200111_161647_396896_97C4CFA3 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: airlied@linux.ie, linux-kernel@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-rockchip@lists.infradead.org, daniel@ffwll.ch, sudeep.holla@arm.com,
 linux-amlogic@lists.infradead.org, robin.murphy@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

If devfreq_recommended_opp() fails we need to undo
dev_pm_opp_of_add_table() by calling dev_pm_opp_of_remove_table() (just
like we do it in the other error-path below).

Fixes: f3ba91228e8e91 ("drm/panfrost: Add initial panfrost driver")
Reviewed-by: Steven Price <steven.price@arm.com>
Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/gpu/drm/panfrost/panfrost_devfreq.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/panfrost/panfrost_devfreq.c b/drivers/gpu/drm/panfrost/panfrost_devfreq.c
index 1471588763ce..170f6c8c9651 100644
--- a/drivers/gpu/drm/panfrost/panfrost_devfreq.c
+++ b/drivers/gpu/drm/panfrost/panfrost_devfreq.c
@@ -93,8 +93,10 @@ int panfrost_devfreq_init(struct panfrost_device *pfdev)
 	cur_freq = clk_get_rate(pfdev->clock);
 
 	opp = devfreq_recommended_opp(dev, &cur_freq, 0);
-	if (IS_ERR(opp))
+	if (IS_ERR(opp)) {
+		dev_pm_opp_of_remove_table(dev);
 		return PTR_ERR(opp);
+	}
 
 	panfrost_devfreq_profile.initial_freq = cur_freq;
 	dev_pm_opp_put(opp);
-- 
2.24.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
