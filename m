Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 136D41B5BB9
	for <lists+linux-rockchip@lfdr.de>; Thu, 23 Apr 2020 14:48:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/FMU4eRTYwZihHrlYyZVFJwa1NgSL9i+cc/GQX4o0s4=; b=p78nt6eD8cgaB4
	SH0SAtDv9j4VOlPFMbj7GC/QmkJ1ij3M0nZYaRqvoRt1k1NZoYvbiYtB2t0CHmZRyUWIyVOEG/sT1
	R55pz0Zr8wP8XD+QxitNLhR0DgFRnLzZP9NR625d5QYqxXc9WJRb9okqYniL+jUogE5Wi36Evh/hG
	WKiyXBIJiuNcsNLk3wt9Td0JVUpWObWwIfb5dKAb9Ah2ZMDu5IYPrIE0cC/8MKskQXC10umqZDAIn
	wJVEj4VKy5EG5c2f/RYmV3CBaVG8g1wOpnwmwNBQzdUT91rHTMseQ47dux76/VF1jO8T4xvgwPha1
	ctwwLOhYTqt8jXnCGwJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRbH5-0002Fb-DL; Thu, 23 Apr 2020 12:48:15 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRbH2-0002Ej-M2
 for linux-rockchip@lists.infradead.org; Thu, 23 Apr 2020 12:48:13 +0000
Received: by mail-wm1-x341.google.com with SMTP id h2so6285295wmb.4
 for <linux-rockchip@lists.infradead.org>; Thu, 23 Apr 2020 05:48:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=AIWDZqBU/m1xMWhrZfTJgdQpK0v0DeS2ch8sjIFRn1o=;
 b=IWSs9nbgcZK6vbN6AxMc7DXCMIRSEXT+zXxFa2memXXRINJEoe9BBuUC1XuEul8cU5
 faG8X/sEDFm2OAPncZD6JmPNo/L1TCNX6CfNM11N3DEfoFStIKSDEELn15N3Z+5P4PUy
 wUaZgTs5CIAU/qMmi+8RxsyD9Ca+MjwUfOhdK2mWesajkf1G2Z7IYe5KxwnsnPiaMn9D
 35ZJSQFo6N12ePSS4VxpnFbMFNX8ublLbVA6itFGlvvFB7iRh5VEwbegt6KIanp/CSoF
 yY3yAFC6idyTWu1j/1GNB3sus005W1MD6LDsqf++mUuPvql+q7Y1flk4g+/GCpd8t7Vb
 yBiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=AIWDZqBU/m1xMWhrZfTJgdQpK0v0DeS2ch8sjIFRn1o=;
 b=SwdnNsAV9L7s9jZkVv8KhVamC4PsyOnuneOVfQKxbFWNyACI7ZWX2/B8IfLCyuLc14
 Vh9VdWgQTTkvrUl6AtiB77IJ1VDGPjwgjTGsSlXSb8vLeb+2XkynR2fK2QQTe7kKB5Oo
 ZFsgBnOKy2EreG9A79F9O51Cs5Pga9seDGf8AzEZG7CQIsXeMcuE6yVhbjs46UpQYLBZ
 ze2zDFBFSn3Rgu44ko+t6FV1UxyFAinEIrgeHfAQEKGylq3zXiHCm6IbaRL8n5Ib1u26
 jlfeWnl308z8IrGUbrUgjCf966kzPQAkqXWsfxVBcHzB+niENz7a9FVzwJPjSnkiCLis
 Yd/w==
X-Gm-Message-State: AGi0PubmmYQB22KKNYa3UWClhXbkUOIh+arn8RXL5O33aKND5oFY5bbp
 hw2n/ZVaXYQDs7Cs98/wKg0=
X-Google-Smtp-Source: APiQypLbjw45ucXMMdNEze5vzTmLlFY1dYkm9XBnrtS1Rr4KNXzqteQX0stoMFeih45vI8iuRblXRQ==
X-Received: by 2002:a1c:5683:: with SMTP id k125mr3897667wmb.17.1587646091198; 
 Thu, 23 Apr 2020 05:48:11 -0700 (PDT)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id f8sm3626512wrm.14.2020.04.23.05.48.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 23 Apr 2020 05:48:10 -0700 (PDT)
Subject: Re: [PATCH v2 7/9] media: MAINTAINERS: rkisp1: add path to dt-bindings
To: Helen Koike <helen.koike@collabora.com>, devicetree@vger.kernel.org,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20200403161538.1375908-1-helen.koike@collabora.com>
 <20200403161538.1375908-8-helen.koike@collabora.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <6cc8ac87-761b-de5d-7104-6f55f419a4d1@gmail.com>
Date: Thu, 23 Apr 2020 14:48:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200403161538.1375908-8-helen.koike@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_054812_748484_AD732939 
X-CRM114-Status: GOOD (  14.49  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
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
Cc: devel@driverdev.osuosl.org, mark.rutland@arm.com,
 dafna.hirschfeld@collabora.com, heiko@sntech.de, kishon@ti.com,
 linux-kernel@vger.kernel.org, karthik.poduval@gmail.com, robh+dt@kernel.org,
 hverkuil-cisco@xs4all.nl, kernel@collabora.com, ezequiel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Helen,

On 4/3/20 6:15 PM, Helen Koike wrote:
> The Rockchip ISP bindings was moved out of staging.
> Update MAINTAINERS file with the new path.
> 
> Suggested-by: Johan Jonker <jbx6244@gmail.com>
> Signed-off-by: Helen Koike <helen.koike@collabora.com>
> ---
> 
> V2:
> - This is a new patch in the series
> ---
>  MAINTAINERS | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index d66ac41ef5872..726044b84cf23 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -14303,6 +14303,7 @@ M:	Helen Koike <helen.koike@collabora.com>
>  L:	linux-media@vger.kernel.org

L:	linux-rockchip@lists.infradead.org

>  S:	Maintained

>  F:	drivers/staging/media/rkisp1/
> +F:	Documentation/devicetree/bindings/media/rockchip-isp1.yaml

Rebase.
The MAINTAINERS document was recently sort.
Check entries with:

./scripts/parse-maintainers.pl --input=MAINTAINERS --output=MAINTAINERS
--order

>  
>  ROCKCHIP RASTER 2D GRAPHIC ACCELERATION UNIT DRIVER
>  M:	Jacob Chen <jacob-chen@iotwrt.com>
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
