Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 364DE13A3F
	for <lists+linux-rockchip@lfdr.de>; Sat,  4 May 2019 15:25:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wyzQvyYTVHu7X1vOjUbTL4yg0nmzA2ao7dcGOeGUEVo=; b=blhk31xyLx8zt+b7E/lAHPO8lg
	sFZykH/wHW82FRI/G6N+zj7i3S6J1AqYedif9WUsZ4ZaJiT19PqO6G2pACJwM4ibES2h3FzodPf80
	rKxX/xTAuNR77GRC3140wI9nqVv88uKfK7JTKlqpkOLbEvjDGxI2xAQrOty/tyYdLt2/iXvbt6+IH
	cEAZYdyhBUQVJoxRApRbcyfqyxNotWlDioluYC/Dlv1jHJWBmlo5gcvD0mv08P21WI1nNeh40sC0X
	Xum6jS6PeGtIsIsLuWfFgiw+Q35pe6AMzH9jWr2MM7Ku09Q6sirQkar8HSm9MxSa2O9kkpGsnEKaH
	lwaw6s9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMufm-00088s-Cx; Sat, 04 May 2019 13:25:50 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMuef-0005t6-9o
 for linux-rockchip@lists.infradead.org; Sat, 04 May 2019 13:24:54 +0000
Received: by mail-ed1-x542.google.com with SMTP id w11so9454128edl.5
 for <linux-rockchip@lists.infradead.org>; Sat, 04 May 2019 06:24:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=vManM7fsE1Rfxf4LI9PE09NH5+qz6oMA7YIWPZCw8JA=;
 b=ez50CYZi1A8wSumNLxfFT5fDvjyQSthm2ImcyBgWJZNuWsYYTI+5MV7M6wdd1MdMNN
 pJwutO+Oo2R/OawUn4U/2LtJK66YGTuRSO5Gyp/pIWuGi7PrTA9NdJOUDJc/t78TKc6k
 zw4ACn7/KpWHDA2S3OCEcc88Fql/3lD2sA3zOau9aiDy6BMZx5q945EXSP1U0E8Hh+5R
 lV5GfPeFErApZvps8XsrN2CnAT0KHUS5fBuIvsTtR9oGx/0vCS1Bj+M1C3xvNh3CeDD6
 vh9+citZdv4ijxFwUP40Bdeb9ra4qfEtz9Jpn992AuvkUaU6EdbfafrSRp4lyP7xq95o
 YKbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=vManM7fsE1Rfxf4LI9PE09NH5+qz6oMA7YIWPZCw8JA=;
 b=kXeJkCbRjFAonVUz0VadQP2nkRv0Mza5RA58+iIcxcCu74o/9ffYTnv3IjtwW33vUx
 axyD94Tw308I+pBOSHQwaPsdFSDHAXEgpz98RY+VxE70Ba+XdPzzIZLtmKnNalVQ4tgq
 LsRtaeKjV27MfM+akcCMSGfEgii03ILAtt0nI8Qk6Krx/u8BzrJ8ZnEepRATtGX5NZoN
 DtE5EGcdsi58PclsexTX4tLkqscNJP+DYzvNRc8TUq7hu3OzxQTCSOraceVGzn31Ukj8
 I1dwolfv4hue0Q5aJt1DP+kMX3q7XGkRi2/QsMTg8AjmH5IXEfTT6KXOj/g2tzYxVYCA
 SBSA==
X-Gm-Message-State: APjAAAVWJS1vIN/IncZ97X8A9BQqFEpknj0/DQv0e3jtemQkAA50J2M+
 rXcbWfo2bfPk6G/tbVgecEUJhw==
X-Google-Smtp-Source: APXvYqwVWrOdcYUC7jm/t7viqs/ofzOLuJ/GlF1vnrPFUxe0Q8NSMRSZyeacAEO3a+B70xlEIX1lEQ==
X-Received: by 2002:a50:c201:: with SMTP id n1mr14701766edf.244.1556976279937; 
 Sat, 04 May 2019 06:24:39 -0700 (PDT)
Received: from localhost.localdomain ([79.97.203.116])
 by smtp.gmail.com with ESMTPSA id s53sm1391106edb.20.2019.05.04.06.24.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 04 May 2019 06:24:39 -0700 (PDT)
From: Tom Murphy <tmurphy@arista.com>
To: iommu@lists.linux-foundation.org
Subject: [RFC 5/7] iommu/dma-iommu: add wrapper for
 iommu_dma_free_cpu_cached_iovas
Date: Sat,  4 May 2019 14:23:21 +0100
Message-Id: <20190504132327.27041-6-tmurphy@arista.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190504132327.27041-1-tmurphy@arista.com>
References: <20190504132327.27041-1-tmurphy@arista.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_062441_618195_C4A73634 
X-CRM114-Status: GOOD (  13.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: Heiko Stuebner <heiko@sntech.de>, kvm@vger.kernel.org,
 Will Deacon <will.deacon@arm.com>, David Brown <david.brown@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>, linux-s390@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, Kukjin Kim <kgene@kernel.org>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 Andy Gross <andy.gross@linaro.org>, linux-tegra@vger.kernel.org,
 Marc Zyngier <marc.zyngier@arm.com>, linux-arm-msm@vger.kernel.org,
 Alex Williamson <alex.williamson@redhat.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Tom Murphy <tmurphy@arista.com>, Robin Murphy <robin.murphy@arm.com>,
 linux-kernel@vger.kernel.org, murphyt7@tcd.ie, Rob Clark <robdclark@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add a wrapper for iommu_dma_free_cpu_cached_iovas in the dma-iommu api
path to help with the intel-iommu driver conversion to the dma-iommu api
path

Signed-off-by: Tom Murphy <tmurphy@arista.com>
---
 drivers/iommu/dma-iommu.c | 9 +++++++++
 include/linux/dma-iommu.h | 3 +++
 2 files changed, 12 insertions(+)

diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
index 82ba500886b4..1415b6f068c1 100644
--- a/drivers/iommu/dma-iommu.c
+++ b/drivers/iommu/dma-iommu.c
@@ -49,6 +49,15 @@ struct iommu_dma_cookie {
 	struct iommu_domain		*fq_domain;
 };
 
+void iommu_dma_free_cpu_cached_iovas(unsigned int cpu,
+		struct iommu_domain *domain)
+{
+	struct iommu_dma_cookie *cookie = domain->iova_cookie;
+	struct iova_domain *iovad = &cookie->iovad;
+
+	free_cpu_cached_iovas(cpu, iovad);
+}
+
 static void iommu_dma_entry_dtor(unsigned long data)
 {
 	struct page *freelist = (struct page *)data;
diff --git a/include/linux/dma-iommu.h b/include/linux/dma-iommu.h
index 3fc76918e9bf..1e5bee193feb 100644
--- a/include/linux/dma-iommu.h
+++ b/include/linux/dma-iommu.h
@@ -25,6 +25,9 @@ void iommu_setup_dma_ops(struct device *dev, u64 dma_base, u64 size);
 void iommu_dma_map_msi_msg(int irq, struct msi_msg *msg);
 void iommu_dma_get_resv_regions(struct device *dev, struct list_head *list);
 
+void iommu_dma_free_cpu_cached_iovas(unsigned int cpu,
+		struct iommu_domain *domain);
+
 #else /* CONFIG_IOMMU_DMA */
 
 struct iommu_domain;
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
