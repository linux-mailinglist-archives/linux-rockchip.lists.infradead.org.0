Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25BCF1E7A49
	for <lists+linux-rockchip@lfdr.de>; Fri, 29 May 2020 12:16:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4QZ3nEdkWjqaDEPZ2Z8QHWJdVpTJzW8XeLhB9Fq7huM=; b=WgWuJV9E/xRkMU
	k8kWIdS7g9WfiSC+DX+zxc4nvy+X5BP9JJA5s7RnKUm2EtxphZEtPPnS9FGMW7IeUJLDcxjjg/2yz
	QOS2N9iWESC4L7vZwQpUmfIDJON5iQ/f4kI1N0liE5lJYGqtmGbqgOpztD266DnAgeipom68yP5Hv
	ZO6ly3JY5HeJxqJo9bzqroA4f0cb6g7fRD/42xHARPe5VApNIAOjKSBWxnia1Bfn9Xhoc02MKACLS
	k+rCSKdYh8Z5RwDbHjOFczwGkeuW7f2MRVmcNjCT7NPv8jiIEXDvNeExQReW6qn+csrH3zZ9NnjoG
	bRcy6exR45BE3xQNIdRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jec3p-0001Ju-4J; Fri, 29 May 2020 10:16:21 +0000
Received: from mail-lj1-f193.google.com ([209.85.208.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jec3k-0001HW-4t; Fri, 29 May 2020 10:16:17 +0000
Received: by mail-lj1-f193.google.com with SMTP id z18so1881452lji.12;
 Fri, 29 May 2020 03:16:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Qb23YrFge2bev6B+pdY5MYpRbBAt1YLbxMOSUywPdHk=;
 b=QUJHk+rjfRS6Mzozco5dZQcKmlQCv3K+k7fXcHZVtkKN1OsjLSbGXLrDrMqo4kt27X
 qXJZdsrLnIIVVsbRL6iobjoaxczwLwn+tSEPQT+HkmPKEcREUWjMLoFbbvip4IFI+ps5
 f+ZC1PV27uIPZ7F9L3NftBBl6dm7Phfz9SEWFLiVu+gx9VDehV2XztHwlKSRomMolEV5
 cHZXjVrOGS+4krw/wCQ3dVoA9n4pXghfTDoSAn7832VZ+bNtDWZCnug4CDiYx7+zLs2W
 e7wLbORxEzJTKqt9n9onufO0NSrOPhZIkGSA7ejo28Ia3FTSnDRem0EaLH9FGOrYgSk9
 IfBg==
X-Gm-Message-State: AOAM531VKpvp5XfU4otPrV7fh6bPZ8cWv9naqDWS/3wzKKqynDJ79aAv
 +IE1Gh2KYZj4bZzfgn4pFXY=
X-Google-Smtp-Source: ABdhPJyb49lJcndlDqUtkrSajYOpqC0lpLBM00Du0tW1RABChW4sreguvSnQJV4+HR28+sDilaHYIw==
X-Received: by 2002:a05:651c:39b:: with SMTP id
 e27mr3886282ljp.253.1590747373144; 
 Fri, 29 May 2020 03:16:13 -0700 (PDT)
Received: from xi.terra (c-beaee455.07-184-6d6c6d4.bbcust.telenor.se.
 [85.228.174.190])
 by smtp.gmail.com with ESMTPSA id h26sm2236339lja.0.2020.05.29.03.16.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 May 2020 03:16:12 -0700 (PDT)
Received: from johan by xi.terra with local (Exim 4.93.0.4)
 (envelope-from <johan@kernel.org>)
 id 1jec3c-0004TR-D6; Fri, 29 May 2020 12:16:08 +0200
Date: Fri, 29 May 2020 12:16:08 +0200
From: Johan Hovold <johan@kernel.org>
To: Alexandru Ardelean <alexandru.ardelean@analog.com>
Subject: Re: [PATCH 4/5] iio: light: lm3533-als: remove explicit parent
 assignment
Message-ID: <20200529101608.GC19480@localhost>
References: <20200522082208.383631-1-alexandru.ardelean@analog.com>
 <20200522082208.383631-4-alexandru.ardelean@analog.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200522082208.383631-4-alexandru.ardelean@analog.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_031616_190737_B6A4A29F 
X-CRM114-Status: GOOD (  14.01  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jhovold[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.193 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: milo.kim@ti.com, tomislav.denis@avl.com, dan@dlrobertson.com,
 heiko@sntech.de, linux-aspeed@lists.ozlabs.org, linux-iio@vger.kernel.org,
 linus.walleij@linaro.org, eajames@linux.ibm.com,
 platform-driver-x86@vger.kernel.org, paul@crapouillou.net,
 lorenzo.bianconi83@gmail.com, songqiang1304521@gmail.com,
 srinivas.pandruvada@linux.intel.com, linux-stm32@st-md-mailman.stormreply.com,
 devel@driverdev.osuosl.org, linux-samsung-soc@vger.kernel.org,
 khilman@baylibre.com, tduszyns@gmail.com, krzk@kernel.org,
 linux-rockchip@lists.infradead.org, wens@csie.org, kgene@kernel.org,
 bcm-kernel-feedback-list@broadcom.com, agross@kernel.org,
 linux-input@vger.kernel.org, orsonzhai@gmail.com, alexandre.torgue@st.com,
 linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 s.hauer@pengutronix.de, jikos@kernel.org, vilhelm.gray@gmail.com,
 mripard@kernel.org, vz@mleia.com, hdegoede@redhat.com,
 linux-mediatek@lists.infradead.org, ak@it-klinger.de, matthias.bgg@gmail.com,
 linux-amlogic@lists.infradead.org, fabrice.gasnier@st.com,
 linux-arm-kernel@lists.infradead.org, sbranden@broadcom.com, rmfrfs@gmail.com,
 shawnguo@kernel.org, dmitry.torokhov@gmail.com, coproscefalo@gmail.com,
 linux-kernel@vger.kernel.org, rjui@broadcom.com, slemieux.tyco@gmail.com,
 bjorn.andersson@linaro.org, mcoquelin.stm32@gmail.com, zhang.lyra@gmail.com,
 baolin.wang7@gmail.com, ktsai@capellamicro.com, syednwaris@gmail.com,
 peda@axentia.se, jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, May 22, 2020 at 11:22:07AM +0300, Alexandru Ardelean wrote:
> This assignment is the more peculiar of the bunch as it assigns the parent
> of the platform-device's device (i.e. pdev->dev.parent) as the IIO device's
> parent.
>
> It's unclear whether this is intentional or not.
> Hence it is in it's own patch.

Yeah, we have a few mfd drivers whose child drivers registers their
class devices directly under the parent mfd device rather than the
corresponding child platform device.

Since it's done consistently I think you need to update them all if you
really want to change this. 

And it may not be worth it since at least in theory someone could now be
relying on this topology.

> Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
> ---
>  drivers/iio/light/lm3533-als.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/iio/light/lm3533-als.c b/drivers/iio/light/lm3533-als.c
> index bc196c212881..0f380ec8d30c 100644
> --- a/drivers/iio/light/lm3533-als.c
> +++ b/drivers/iio/light/lm3533-als.c
> @@ -852,7 +852,6 @@ static int lm3533_als_probe(struct platform_device *pdev)
>  	indio_dev->channels = lm3533_als_channels;
>  	indio_dev->num_channels = ARRAY_SIZE(lm3533_als_channels);
>  	indio_dev->name = dev_name(&pdev->dev);
> -	indio_dev->dev.parent = pdev->dev.parent;
>  	indio_dev->modes = INDIO_DIRECT_MODE;
>  
>  	als = iio_priv(indio_dev);

Johan

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
