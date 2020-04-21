Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1D611B2785
	for <lists+linux-rockchip@lfdr.de>; Tue, 21 Apr 2020 15:19:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6COE7yTPg5iS/ynaOC83ZgK9wX6fRwBACMMVX39vq5Y=; b=rfBAeOWaWiyxwG
	F8GHUTjqxpuXu1Rp+RxzavJLQeNv7MBDcc3MYI4KIyJPsC6pdC0KuPoS7sPTwM/EWvr0kWL7XKy+z
	OuDaaJ6Km+s5XHI1/w6LxOWB6lEiw1yl8SHnAnM0i/OWs3x/hgHPgoxaTLCu6wRvpYrt10gFrzchU
	Im2obrW9faKfRa0R532DlNhddtDvwqe5SeozwH8ZgoEYz+j8rpCIPKk814aI0GalINFcjRZ936urd
	D8nGBwk0dD0YlCBRxH0Uz/WsYTL33ZpTKGvP0pW90Sy6Ib67ccfLy53ffhUpFapT26Pot+/QHDLtt
	hLXY2TiLTw5iLbOyysyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQsoR-000535-Jy; Tue, 21 Apr 2020 13:19:43 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQsoO-00051t-98
 for linux-rockchip@lists.infradead.org; Tue, 21 Apr 2020 13:19:41 +0000
Received: by mail-wm1-x341.google.com with SMTP id e26so3515861wmk.5
 for <linux-rockchip@lists.infradead.org>; Tue, 21 Apr 2020 06:19:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=TAO+0ZkQGzRlz79i9so3eTTstzU170GvA9NPAGQEIMQ=;
 b=D9x5mxHFMGg+HnZopS9+Zgl4ocxvopuSEo6BqEwDW+5f7Jn7eo+EHmjtUGZw43My+S
 nIDulDrnrMxWXgjM4y+tGlVDAEjZkxqJfKld3UD7pDfmcQWp7ayYOkwv3kHM9k3z3L4B
 y5BRcojU/DG5+0lIoEZ9XlRNCvYgxfhnxkwo3KIpIcdX7iZZSfh5ZbR7OrNk/g0LvUCs
 Lf84VWlivj4vXdm6uRvwXD+7ay1CdeqM6cDVKe7MNMOVKUryPAnqYJDMGUwlWZc1zEvL
 O76dUv+liatt0wUeHHESLmXa+leq7LgDWVVEXEf+nAEFNd5+7kvSQVgncU87Xi2rarAD
 Ok5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=TAO+0ZkQGzRlz79i9so3eTTstzU170GvA9NPAGQEIMQ=;
 b=kvHEEHsvaNi4HbJaib+hSoVTfSuhcXnqYcXugnMOuZotwLYfawSXExTfnqqmZDdQ6P
 5Ix3tT5f/qHKV2epGjNQIpZDLkWARxiWopahzUNPTDDyyRJ+mx0egAhEhVim5rhsyHud
 Ckhb1+yejKaZnetXGXaynslwiUdFge6MJo2T4dspK5OlbpqV1pEUdvjzTv7YeJF63HTI
 TwDHAU99SmXhUAi/7emAzq0hA/GBfuhm0k1uvaWnkrp71iFfc0qJR4XT6BHOLlljZCKb
 TV+srHXg2glqk8Uihm5ifVf6FCiFfvBgHcc5PI7UypTUtHaSMdbKZv9jJhiNS+hlhql2
 YrKw==
X-Gm-Message-State: AGi0PubuW+3Bbo+t0Ykw/TSIcllYJZN67ltCAfw15PDD7RDggpeAiUHm
 i3o9dAGa4USp22B+rnvRxAo=
X-Google-Smtp-Source: APiQypLr/7nO9p+xL01dDsn1rdwzQMyND4hb6/GRHkqQt+WjCBL145fU5drl2P0dW+IH4WO5WuiZew==
X-Received: by 2002:a7b:ce0b:: with SMTP id m11mr4981350wmc.67.1587475178825; 
 Tue, 21 Apr 2020 06:19:38 -0700 (PDT)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id w6sm3847410wrm.86.2020.04.21.06.19.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 21 Apr 2020 06:19:38 -0700 (PDT)
Subject: Re: [PATCH v4] dt-bindings: rockchip-vpu: Convert bindings to
 json-schema
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
References: <20200326191343.1989-1-ezequiel@collabora.com>
 <12f6d7cf-6af6-4f54-3188-65e73b703a72@gmail.com>
Message-ID: <9328212d-139f-6a0e-7d0c-3a5529a392f2@gmail.com>
Date: Tue, 21 Apr 2020 15:19:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <12f6d7cf-6af6-4f54-3188-65e73b703a72@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_061940_344180_44E74A67 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, robh@kernel.org,
 linux-kernel@vger.kernel.org, hverkuil@xs4all.nl,
 linux-rockchip@lists.infradead.org, ezequiel@collabora.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

Question for the media maintainers Hans & Co. :

What's nxp,imx8mq-vpu.yaml doing under rga?
Why is rockchip-vpu.yaml inserted under rga instead of vpu?

Johan

> diff --git a/MAINTAINERS b/MAINTAINERS
> index f0e7b4d17fcc..0cfd86594b0b 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -14471,7 +14471,8 @@ M:	Jacob Chen <jacob-chen@iotwrt.com>
>  M:	Ezequiel Garcia <ezequiel@collabora.com>
>  L:	linux-media@vger.kernel.org
>  S:	Maintained
> -F:	Documentation/devicetree/bindings/media/rockchip-rga.txt
> +F:	Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> +F:	Documentation/devicetree/bindings/media/rockchip-vpu.yaml
>  F:	drivers/media/platform/rockchip/rga/

HANTRO VPU CODEC DRIVER
M:	Ezequiel Garcia <ezequiel@collabora.com>
M:	Philipp Zabel <p.zabel@pengutronix.de>
L:	linux-media@vger.kernel.org
L:	linux-rockchip@lists.infradead.org
S:	Maintained
F:	Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
F:	Documentation/devicetree/bindings/media/rockchip-vpu.txt
F:	drivers/staging/media/hantro/

ROCKCHIP RASTER 2D GRAPHIC ACCELERATION UNIT DRIVER
M:	Jacob Chen <jacob-chen@iotwrt.com>
M:	Ezequiel Garcia <ezequiel@collabora.com>
L:	linux-media@vger.kernel.org
S:	Maintained
F:	Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
F:	Documentation/devicetree/bindings/media/rockchip-vpu.yaml
F:	drivers/media/platform/rockchip/rga/

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
