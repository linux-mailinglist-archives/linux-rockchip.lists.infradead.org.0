Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF65E32EA2
	for <lists+linux-rockchip@lfdr.de>; Mon,  3 Jun 2019 13:28:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1CSYciGm8McsGjKvWHkBKOGRLkLlvImP9Mky5fqdu+0=; b=FwoIFeG5AJ7bKL
	noD4bP3ZwmAxmyMORZMZkMpKeFPVvWRfP2434QAPzxrbSf2zLmdqaoXGELa6SYS5NCYQX2uxOwkru
	xNENYEwht2EpB6SFBZF9b+DJgW8ULAroVvNuhqfgg9SqXux39fbV3/X5hfrBtOCNOcilYXCoO4lOQ
	1ge1Gb+aMmENIuR35isxPx5hNsPmGZGx/B/TOUuJrw4FvJlAD8vtt6ijR25BS+H4iLr7mOAH1WmU4
	Y2NdSvCsaHGxICsANHN8jIjr7RvqSPRIzSEAG5b15NzM+quqwsRv4/VQwoTasu+f1hIpWplUsOziK
	5WUo03KEGLLH5EjtmINg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXl8F-0000U4-3K; Mon, 03 Jun 2019 11:28:03 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXl86-0000MB-K6
 for linux-rockchip@lists.infradead.org; Mon, 03 Jun 2019 11:27:56 +0000
Received: by mail-pg1-x544.google.com with SMTP id v11so8113251pgl.5
 for <linux-rockchip@lists.infradead.org>; Mon, 03 Jun 2019 04:27:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yge3w9rHbWgvobFZbFOeEgA2IlTICZ6Y6fbhlA0nby0=;
 b=Y+yacQIvPCAiHgjTQHZU0FVoG9I2CbtFWh1hmP9jN5AY8VLFjiX+k6xtFzH0HNGzit
 O8+HuDE7HRrRPCKpVtBjzFEjUib45UJWNrACrI5dtMn5dhL7BYlOQviAmeCacyysnT/n
 Xvty8zwlPZ+u8dVb5gfg1+6bj4mdWhGmOj9ZV4LWheZdjBeBpOVrxXrNWXT+AbiGMNl2
 Yu+vBF4TlQWGZi8Dq4zfPpETqkKfLGxVZb/314XRDJcA/hQwkyrur5b+hi4Dx4U2BziM
 nnSr7BJ7sU2o9o3B6SunhLofFsrm83s3EU1wt5ZiCI98JrmP0w6INx6y8G5bvgNUiRxA
 ZVIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yge3w9rHbWgvobFZbFOeEgA2IlTICZ6Y6fbhlA0nby0=;
 b=dWV2zpe3DqJ79qcxE4RrY2LRmfPNA49dHTExgQpBndQ9MP8i1qYYvrUnjZEdQInGcc
 LQVue2Kd9ZMNT8Bn0w5uHeyDIy0uugnCX1qDjbCfFhF5UeztUNUTRu9lPKjPIQkk+jEm
 x93iyGNuHahMPX9P+VbVmEdwTe2+b15iPn2Lz0HWe+VaqIcunlpnmd4k/vSGUdqyT6eU
 L/+WmBee0R6eZnGu7WkG77yiaVu4hWV4ruy/wm5h4vq4G6UGBDjZPzbvoY5aKnp4yN/L
 Oqk/kAmxpti66KXqJDHGa3MJv/NDrcsJEZDaJJBbXgU5ZKMMXQXtGEEHwUih8Q6eHDy2
 jVFQ==
X-Gm-Message-State: APjAAAV9CdtGutn0UOlIVlqJN4GMnsl6Og3K6yUaeFxEhIKk6d7zCYpB
 PrtcfhdFri6NsCmJHiuJJXKK8UY6alwylWhTjZOd0A==
X-Google-Smtp-Source: APXvYqzSN6KszB00jgSY5jsJHGaLYRRvYWrgtbKYUHrE3f1JWTjJzTyKXde3mFVwC5OO8+m15yXDYPFToKa7arJ98wc=
X-Received: by 2002:a62:4d03:: with SMTP id a3mr30832487pfb.2.1559561268802;
 Mon, 03 Jun 2019 04:27:48 -0700 (PDT)
MIME-Version: 1.0
References: <20190506185207.31069-1-tmurphy@arista.com>
 <20190603105158.GL12745@8bytes.org>
In-Reply-To: <20190603105158.GL12745@8bytes.org>
From: Tom Murphy <tmurphy@arista.com>
Date: Mon, 3 Jun 2019 12:27:37 +0100
Message-ID: <CAPL0++72dekt=re1=sTWpCJtMX=mUOc3Jcq=9d1sr1QO25_zFA@mail.gmail.com>
Subject: Re: [PATCH v3 0/4] iommu/amd: Convert the AMD iommu driver to the
 dma-iommu api
To: Joerg Roedel <joro@8bytes.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_042754_664401_715090A7 
X-CRM114-Status: GOOD (  16.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Heiko Stuebner <heiko@sntech.de>, Will Deacon <will.deacon@arm.com>,
 David Brown <david.brown@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>, linux-s390@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, iommu@lists.linux-foundation.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, Kukjin Kim <kgene@kernel.org>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 Andy Gross <andy.gross@linaro.org>, linux-tegra@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Robin Murphy <robin.murphy@arm.com>,
 linux-kernel@vger.kernel.org, Tom Murphy <murphyt7@tcd.ie>,
 Rob Clark <robdclark@gmail.com>, David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, Jun 3, 2019 at 11:52 AM Joerg Roedel <joro@8bytes.org> wrote:
>
> Hi Tom,
>
> On Mon, May 06, 2019 at 07:52:02PM +0100, Tom Murphy wrote:
> > Convert the AMD iommu driver to the dma-iommu api. Remove the iova
> > handling and reserve region code from the AMD iommu driver.
>
> Thank you for your work on this! I appreciate that much, but I am not
> sure we are ready to make that move for the AMD and Intel IOMMU drivers
> yet.
>
> My main concern right now is that these changes will add a per-page
> table lock into the fast-path for dma-mapping operations. There has been
> much work in the past to remove all locking from these code-paths and
> make it scalable on x86.

Where is the locking introduced? intel doesn't use a lock in it's
iommu_map function:
https://github.com/torvalds/linux/blob/f2c7c76c5d0a443053e94adb9f0918fa2fb85c3a/drivers/iommu/intel-iommu.c#L5302
because it cleverly uses cmpxchg64 to avoid using locks:
https://github.com/torvalds/linux/blob/f2c7c76c5d0a443053e94adb9f0918fa2fb85c3a/drivers/iommu/intel-iommu.c#L900
And the locking in AMD's iommu_map function can be removed (and i have
removed it in my patch set) because it does that same thing as intel:
https://github.com/torvalds/linux/blob/f2c7c76c5d0a443053e94adb9f0918fa2fb85c3a/drivers/iommu/amd_iommu.c#L1486

Is there something I'm missing?

>
> The dma-ops implementations in the x86 IOMMU drivers have the benefit
> that they can call their page-table manipulation functions directly and
> without locks, because they can make the necessary assumptions. The
> IOMMU-API mapping/unmapping path can't make these assumptions because it
> is also used for non-DMA-API use-cases.
>
> So before we can move the AMD and Intel drivers to the generic DMA-API
> implementation we need to solve this problem to not introduce new
> scalability regressions.
>
> Regards,
>
>         Joerg
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
