Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E7111B280E
	for <lists+linux-rockchip@lfdr.de>; Tue, 21 Apr 2020 15:36:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E2j9PwAYWayA2B+vXbIvDwiKDU1XUZQC8VKwOT98XMo=; b=S45cUtgXokrx9E
	ZF8S3yer6jQF69HL0beLcptC0vDwRifrtiG5TDvyxOijViDp4D1cmVXfhtcGiWkC8d3tKfNPZvxdQ
	Lt2oI4Ir/L2GNlQ6Co2iZBvo8OmTOT3eFW+s82g007EkKQgqdnb/TFyP2fpO3un1K2MjVXLzhJFoz
	6MOILyPZGUZoClKXRJz1YI22r367+cUoiPeJAOl//dvfVWll2PEw8yXz0cIi9TL75zcgMSwR7BEw9
	tnkpO8Ac6BBN8fWKubRs+6qUhcAQEX2dnlwwzi/qYAgPEzKd1uPaNYyVWjZCFWmuSfR1/x3rv77hR
	TcBcNM7IC9opylJHylKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQt4r-0002Au-Q2; Tue, 21 Apr 2020 13:36:41 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQt4p-0002AA-FS
 for linux-rockchip@lists.infradead.org; Tue, 21 Apr 2020 13:36:40 +0000
Received: by mail-wr1-x441.google.com with SMTP id g13so14464057wrb.8
 for <linux-rockchip@lists.infradead.org>; Tue, 21 Apr 2020 06:36:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=5OQyA1IQKL66fu+SroNc2N6PhU0Vi6Th6juxgV44yhE=;
 b=WyFbMps8aAO8dbx5cDlOc3GPqsdlkgo3uwVrzOgHfhiIouuR2TPVDcbChKmSYo8PqZ
 yPB0HQ0Oumt0hawJPO+bvQfRf6YPDDPLkWCrVEAJk9bfUzBmMJgA4cSrEYFnZA6i0Iq5
 VnoQQrB6eDI+l9ZWsaeL5Ht6bRX0tiSZ+ufwKMUysD2BkRy+VaYHZrE+cOmrVpczNYOH
 bY6aVGa/DHrqlZMxUi7vUz+AVcwd5lmQhnqyk8RnoozWD5SGtXoRYrIXsXQD09MhSs8g
 bZw1ASmGPMr/Nvsx9dF5sdq7QTByTw5TLF/pH0fF978qaV3xq9Q2vUNNVV6CPk8XvOZd
 4PAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=5OQyA1IQKL66fu+SroNc2N6PhU0Vi6Th6juxgV44yhE=;
 b=TTkdZktPBcxGT5mumRNz73be0X/f+dWAdCvL3fl2FkcjabG0JDTG3m5hDqsjiEwLQ5
 q+iHAUoGwccs6PMoeWXPTPXmSh9UaHyWgGK3seBfv04LmtbBOAKGA9AcUkO3xI3dG8iP
 coYenRIVi1h6xV2uUoYKJ7OdqJGvI3YsPWj1YTlHPOrwVAVd7HBI1IPKXMGi2Y47OXFH
 KQKtmEOP4jhlzkvD7igDrhrlI7NcphyvD1MJl3ZZynMGAaLbUm3tshZaV11Ha9z3RcGk
 1sS9ORGzS69tXZqMMZ8zhoRyfh0TTM8KUsMW9jLcAxxqYvaRhqASj9wVlskX+3Q+f3vZ
 GLxg==
X-Gm-Message-State: AGi0PuaPPRGuHyS4jsKlkPIOiOfHZGNnuz0Qe2uqNxu8GvnmO2H9XuB8
 cvJeVKIvVJ2CZ8FScXhTEAU=
X-Google-Smtp-Source: APiQypIafTb861wTqKFVKyWjNJsxEWJwE2dYhymN5jKxCk9R4Z9mkEd2PKAJEvjPgI9Xe+SBtGWUsA==
X-Received: by 2002:a5d:6ccb:: with SMTP id c11mr25202595wrc.416.1587476197392; 
 Tue, 21 Apr 2020 06:36:37 -0700 (PDT)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id k8sm3768837wrm.52.2020.04.21.06.36.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 21 Apr 2020 06:36:36 -0700 (PDT)
Subject: Re: [PATCH v4] dt-bindings: rockchip-vpu: Convert bindings to
 json-schema
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
References: <20200326191343.1989-1-ezequiel@collabora.com>
 <12f6d7cf-6af6-4f54-3188-65e73b703a72@gmail.com>
 <9328212d-139f-6a0e-7d0c-3a5529a392f2@gmail.com>
Message-ID: <0b82a3f1-3b09-15d6-927c-fac1d4a7f631@gmail.com>
Date: Tue, 21 Apr 2020 15:36:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <9328212d-139f-6a0e-7d0c-3a5529a392f2@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_063639_518663_5B250B0F 
X-CRM114-Status: GOOD (  11.96  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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

Also add

L:	linux-rockchip@lists.infradead.org

to all Rockchip related MAINTAINERS items.

On 4/21/20 3:19 PM, Johan Jonker wrote:
> Hi,
> 
> Question for the media maintainers Hans & Co. :
> 
> What's nxp,imx8mq-vpu.yaml doing under rga?
> Why is rockchip-vpu.yaml inserted under rga instead of vpu?
> 
> Johan
> 
>> diff --git a/MAINTAINERS b/MAINTAINERS
>> index f0e7b4d17fcc..0cfd86594b0b 100644
>> --- a/MAINTAINERS
>> +++ b/MAINTAINERS
>> @@ -14471,7 +14471,8 @@ M:	Jacob Chen <jacob-chen@iotwrt.com>
>>  M:	Ezequiel Garcia <ezequiel@collabora.com>
>>  L:	linux-media@vger.kernel.org
>>  S:	Maintained
>> -F:	Documentation/devicetree/bindings/media/rockchip-rga.txt
>> +F:	Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
>> +F:	Documentation/devicetree/bindings/media/rockchip-vpu.yaml
>>  F:	drivers/media/platform/rockchip/rga/
> 
> HANTRO VPU CODEC DRIVER
> M:	Ezequiel Garcia <ezequiel@collabora.com>
> M:	Philipp Zabel <p.zabel@pengutronix.de>
> L:	linux-media@vger.kernel.org
> L:	linux-rockchip@lists.infradead.org
> S:	Maintained
> F:	Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> F:	Documentation/devicetree/bindings/media/rockchip-vpu.txt
> F:	drivers/staging/media/hantro/
> 
> ROCKCHIP RASTER 2D GRAPHIC ACCELERATION UNIT DRIVER
> M:	Jacob Chen <jacob-chen@iotwrt.com>
> M:	Ezequiel Garcia <ezequiel@collabora.com>
> L:	linux-media@vger.kernel.org

Add list

> S:	Maintained
> F:	Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> F:	Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> F:	drivers/media/platform/rockchip/rga/
> 

ROCKCHIP VIDEO DECODER DRIVER
M:	Ezequiel Garcia <ezequiel@collabora.com>
L:	linux-media@vger.kernel.org

Add list

S:	Maintained
F:	drivers/staging/media/rkvdec/
F:	Documentation/devicetree/bindings/media/rockchip,vdec.yaml

ROCKCHIP ISP V1 DRIVER
M:	Helen Koike <helen.koike@collabora.com>
L:	linux-media@vger.kernel.org

Add list

S:	Maintained
F:	drivers/staging/media/rkisp1/

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
