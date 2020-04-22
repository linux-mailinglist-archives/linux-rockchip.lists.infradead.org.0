Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4BFB1B43E6
	for <lists+linux-rockchip@lfdr.de>; Wed, 22 Apr 2020 14:04:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JoA1f/CvZKhbpkrE+wkfaPSfwZI0D7YkaJ/bh8lj2jM=; b=nyMm7MPWlcdB65
	f+0LZ26o57wCBZHZkIbtwqSHl9wZ05yZ9dvKDN4x5Knb5RN5n1AlU23R2NkxK8UFoeOcMbc6r/m7Q
	Cll6bQVnoJnbwqWRXoJR7P7/MbhwX4gWeIxPR3Vvh0GRJjIoh6pPzf8iS8THiKNzaw8gPj5C+Xd8A
	IGa9goWotiXVQRl1jnZhmQvCxDyEVAxGxhaE4WPNAT9xsgkTk8F7MIeuDI+xOfZHdi+S2B1BEf4++
	cQnEqsAcRzEaL9vAznZvbyMo57NmPt59gm/UhlDACLkgBrHxtQJeN+USxj5E+Onhd/VjXJ+uSIyQq
	cA0IF2JP2+yzGAvSDSDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRE7B-0006me-7B; Wed, 22 Apr 2020 12:04:29 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRE4Z-0004GL-I4
 for linux-rockchip@lists.infradead.org; Wed, 22 Apr 2020 12:01:49 +0000
Received: by mail-wr1-x444.google.com with SMTP id k1so2077490wrx.4
 for <linux-rockchip@lists.infradead.org>; Wed, 22 Apr 2020 05:01:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=iOKXRpXv+gkEgofK4WVWRQKy9tlZ8yvYUK75eISMHWM=;
 b=czKi7qn21POWgr44WAv0KdcLxI/rxgkVzrlB/1C4Xw4WEoR6ftneGr4rQ2iMCyufUz
 pcFMo829elw+M1gPwGJq7n4Hefkg1pBL6KAzY2pV5y11GBX/Bfv5BMxdQP/CUSD3OSJ4
 3Idb9AILqcpMVQScuFr+q0G9QEVExG4DmMAsfTAkfunYXiVH5SpQm73iGD2o7iKwx5Lt
 9Lxv9S+u09drWbnwxBQxzneFd7z7DKPHYdYEhZDcCr1rGDPXAcfcBb7eFJczltlqofnX
 xsmgXDx9NvO/yYeemtjZoyn8VdN9ZMIXMgIc0z8EjaUGD5MewXNrSiMiL9mg3BhyIy24
 rT1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=iOKXRpXv+gkEgofK4WVWRQKy9tlZ8yvYUK75eISMHWM=;
 b=XlYYQ7ynffAmrJfZ6kvcHZGG4wJ+/IZYghcMNzzXMK00Fzp1rxAHTClyJ/f/Dpxk2o
 9uu/XfLUveSFCg4rCDkjnYsjL5dLSGrKeKRXs1ysIioZS2s+PKLsSlPJ7xQ0qd0Yy9tA
 9UuzmSPriXBDN3raUfAYmdZeNXuANh0DDAAEIchXNbmUUov926Qm5u4OzK+eAXb7FeMo
 mWlRuA+bEr1qvANM861Oz0xXzx6Ci/tHMa1RCHh9mrY72IZV612rShU6PrOTOmJ2RQQd
 eL+jF97BJnynkPww/hPozfI07FgJrwb6yNQM6ARH4TAv52VxCzHrRsVHjayH8d0hj/tv
 dpQQ==
X-Gm-Message-State: AGi0PuZud6WcA/wMf4055aTM+bF/btEoLvDtLAKw8j+WrTQJ7TaIVx72
 m5daIvyedLgFFHbuTRkVANkNf3Gf
X-Google-Smtp-Source: APiQypL1hXf3hE8tEvLggJJTkHpQZJynplGAtPQGFoM6V+qOP/gFDPqiGq8QGze8PKklHkmiSsjBVQ==
X-Received: by 2002:adf:82cf:: with SMTP id 73mr28979371wrc.411.1587556904428; 
 Wed, 22 Apr 2020 05:01:44 -0700 (PDT)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id s18sm8576749wra.94.2020.04.22.05.01.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 22 Apr 2020 05:01:43 -0700 (PDT)
Subject: Re: [PATCH] media: MAINTAINERS: Fix Hantro, Rga and Rkvdec entries
To: Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20200422111403.19114-1-ezequiel@collabora.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <73d3d8c1-1952-aeb1-5bc0-829503cf29bd@gmail.com>
Date: Wed, 22 Apr 2020 14:01:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200422111403.19114-1-ezequiel@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_050147_662332_79D23754 
X-CRM114-Status: GOOD (  13.65  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
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
Cc: Hans Verkuil <hverkuil@xs4all.nl>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 kernel@collabora.com, Heiko Stuebner <heiko@sntech.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Ezequiel,

On 4/22/20 1:14 PM, Ezequiel Garcia wrote:
> It seems recent merges introduced a couple issues
> here, so let's fix them all. Also, reorder Rockchip
> video decoder as per parse-maintainers.pl script
> and add linux-rockchip mailing list.
> 
> Reported-by: Johan Jonker <jbx6244@gmail.com>
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
>  MAINTAINERS | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 09e0137df61d..4d5b06c6fe0f 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -7460,7 +7460,7 @@ L:	linux-media@vger.kernel.org
>  L:	linux-rockchip@lists.infradead.org
>  S:	Maintained
>  F:	Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> -F:	Documentation/devicetree/bindings/media/rockchip-vpu.txt
> +F:	Documentation/devicetree/bindings/media/rockchip-vpu.yaml
>  F:	drivers/staging/media/hantro/
>  
>  HARD DRIVE ACTIVE PROTECTION SYSTEM (HDAPS) DRIVER
> @@ -14465,13 +14465,6 @@ F:	Documentation/ABI/*/sysfs-driver-hid-roccat*
>  F:	drivers/hid/hid-roccat*
>  F:	include/linux/hid-roccat*
>  
> -ROCKCHIP VIDEO DECODER DRIVER
> -M:	Ezequiel Garcia <ezequiel@collabora.com>
> -L:	linux-media@vger.kernel.org
> -S:	Maintained
> -F:	drivers/staging/media/rkvdec/
> -F:	Documentation/devicetree/bindings/media/rockchip,vdec.yaml
> -
>  ROCKCHIP ISP V1 DRIVER
>  M:	Helen Koike <helen.koike@collabora.com>
>  L:	linux-media@vger.kernel.org

L:	linux-rockchip@lists.infradead.org

> @@ -14483,12 +14476,19 @@ ROCKCHIP RASTER 2D GRAPHIC ACCELERATION UNIT DRIVER
>  M:	Jacob Chen <jacob-chen@iotwrt.com>
>  M:	Ezequiel Garcia <ezequiel@collabora.com>
>  L:	linux-media@vger.kernel.org
> +L:	linux-rockchip@lists.infradead.org
>  S:	Maintained
> -F:	Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
>  F:	Documentation/devicetree/bindings/media/rockchip-rga.yaml
> -F:	Documentation/devicetree/bindings/media/rockchip-vpu.yaml
>  F:	drivers/media/platform/rockchip/rga/
>  
> +ROCKCHIP VIDEO DECODER DRIVER
> +M:	Ezequiel Garcia <ezequiel@collabora.com>
> +L:	linux-media@vger.kernel.org
> +L:	linux-rockchip@lists.infradead.org
> +S:	Maintained

> +F:	drivers/staging/media/rkvdec/
> +F:	Documentation/devicetree/bindings/media/rockchip,vdec.yaml

When I look at the other entries 'drivers/' is sort below 'Documentation/'.

./scripts/parse-maintainers.pl --input=MAINTAINERS --output=MAINTAINERS
--order

> +
>  ROCKER DRIVER
>  M:	Jiri Pirko <jiri@resnulli.us>
>  L:	netdev@vger.kernel.org
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
