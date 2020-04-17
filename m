Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F5221AD3EC
	for <lists+linux-rockchip@lfdr.de>; Fri, 17 Apr 2020 03:03:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IG90CcHSJTxN/YGec+1CtVsetkKT2XYNCfX65/gbM6o=; b=lhv+gcOtLGNBAZ
	YQZyQoLtcZgJ+dFMa/KIlp0iqwZxlRM5Fnu9+hIwdsqVQcwtFyompjvSutBEWFlFgKCpCIe4+tyL8
	/h+LoLFLEH6dUiYJAnJdx2Nr2Blvtpz+zTTlelB+xt07DmaBm66uXZK7ZhySJh2ctrs/4vpG4vPpl
	XiIVRMXj3k/V3HozyyR8dKUw+77V9XsbX0eBV3eKCxN8MjLiwp1E3j1Y/I65XDSGiZQLtLlBg14e8
	1JPG1be28Jb2nMIERDnXQLlJ89re7sq8e1lvYAzdMyxGr+l3tmGmIbgIAlQyWhDk/QZck0Ww6ruF3
	Ojgwgs9SKKEUNyiisDmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPFQ6-0004vt-7Y; Fri, 17 Apr 2020 01:03:50 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPFQ1-0004ud-Gh
 for linux-rockchip@lists.infradead.org; Fri, 17 Apr 2020 01:03:48 +0000
Received: by mail-pj1-x1044.google.com with SMTP id kb16so359405pjb.1
 for <linux-rockchip@lists.infradead.org>; Thu, 16 Apr 2020 18:03:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=endlessm-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0ZL5DKQEN5tIRYMA9bsAF7qYyxlNKGNuVSjiADQ9SPk=;
 b=FrdtkA3N/A0B10cQBR1BRxqf+/pg1uBkd6DO7lHtdKgOqGpk1/7USrxTk4rdlzJ0Pn
 oQGe7ba6HSEplsOy6ec3K4H8Fpx1j9/0meJ+gk7xvdUqFq7CDtsNxsMJzjX3kGdDbbz8
 GCSySEUU8oXzqHDM2sby4knjcPLSSaIgNvaO9PtWZWWefGILL8HPrNXdIlKHYq2YILWZ
 AMHiZb/IAXXMBCtRYZZ2S6R7t7InyUg113cLru837l9P5It247de3hDzpXYYYkdzsiNW
 l3eKB2Wxab5vn9CTNWz5BkklF52xIUVdN24g+AL8C9OhFHLjLh5Ls1ropaQnpLD31b3o
 DqaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0ZL5DKQEN5tIRYMA9bsAF7qYyxlNKGNuVSjiADQ9SPk=;
 b=ACAfM5s69VHfOSGIPLxvel/LL/B8NvjBXhlfR9KJYjMVTvA8sbU6/qffWxFaO3twF5
 0kShip3zAYZ63v+2sbG3dkQS75TSllzN1EOnAKp8Dsc/oKpV2zKhhF7sZCLI2QdSRFp6
 6vPRK8656k3SNrpfMVUqDpCMl+17mrVbVxO/iGCiU2CunBiEkNAzdsZFDRgsAtJYuWgH
 hN5UQScJ2EXakk6ioLpuJsCCuld5B2lsaBeoaujVekCLr5m2TWCR9WHCqqDeI0nIaY/j
 L/nrMYIqv9dBJVuESpnPXj3DNHo5/iZ30V3EK6mKYTRaWofwitNIRiujNw2O2EBJqehZ
 jMRQ==
X-Gm-Message-State: AGi0PuYP3jeyLdITI/XoIuXoQ2ioeYDHCWcmro2ZhCFWYEpmiIxt1AB2
 dV/gnRbfSnvkELFwFWMq4JMFUXf1o3DBLg==
X-Google-Smtp-Source: APiQypKfJXVVs8nt0ABNaLviRVVB2FF8oWh5BJ43V1JXuqqLWnC3nHs+J6exlmUfG8/Dws2LqNNTtg==
X-Received: by 2002:a17:902:fe09:: with SMTP id
 g9mr366208plj.171.1587085424144; 
 Thu, 16 Apr 2020 18:03:44 -0700 (PDT)
Received: from limbo.local (host-160.218-14-119.dynamic.totalbb.net.tw.
 [119.14.218.160])
 by smtp.gmail.com with ESMTPSA id u8sm16518026pgl.19.2020.04.16.18.03.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Apr 2020 18:03:43 -0700 (PDT)
From: Daniel Drake <drake@endlessm.com>
To: joro@8bytes.org
Subject: Re: [PATCH v2 00/33] iommu: Move iommu_group setup to IOMMU core code
Date: Fri, 17 Apr 2020 09:03:35 +0800
Message-Id: <20200417010335.31739-1-drake@endlessm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200414131542.25608-1-joro@8bytes.org>
References: <20200414131542.25608-1-joro@8bytes.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_180345_606705_C5077685 
X-CRM114-Status: UNSURE (   8.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: heiko@sntech.de, bjorn.andersson@linaro.org, linux-tegra@vger.kernel.org,
 thierry.reding@gmail.com, will@kernel.org, m.szyprowski@samsung.com,
 jean-philippe@linaro.org, linux-samsung-soc@vger.kernel.org,
 robdclark@gmail.com, krzk@kernel.org, jonathanh@nvidia.com,
 linux-rockchip@lists.infradead.org, agross@kernel.org,
 jonathan.derrick@intel.com, linux-s390@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-mediatek@lists.infradead.org,
 matthias.bgg@gmail.com, virtualization@lists.linux-foundation.org,
 gerald.schaefer@de.ibm.com, dwmw2@infradead.org, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, kgene@kernel.org, robin.murphy@arm.com,
 baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Joerg,

> Hi,
> 
> here is the second version of this patch-set. The first version with
> some more introductory text can be found here:
> 
> 	https://lore.kernel.org/lkml/20200407183742.4344-1-joro@8bytes.org/

Thanks for the continued improvements in this area!

I may have spotted a problem with setups like VMD.

The core PCI bus is set up during early boot.
Then, for the PCI bus, we reach iommu_bus_init() -> bus_iommu_probe().
In there, we call probe_iommu_group() -> dev_iommu_get() for each PCI
device, which allocates dev->iommu in each case. So far so good.

The problem is that this is the last time that we'll call dev_iommu_get().
If any PCI bus devices get added after this point, they do not get passed
to dev_iommu_get().

So when the vmd module gets loaded later, and creates more PCI devices,
we end up in iommu_bus_notifier() -> iommu_probe_device()
-> __iommu_probe_device() which does:

	dev->iommu->iommu_dev = iommu_dev;

dev->iommu-> is a NULL dereference because dev_iommu_get() was never
called for this new device.

Daniel


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
