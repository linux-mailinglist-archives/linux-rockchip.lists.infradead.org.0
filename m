Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF52D15045A
	for <lists+linux-rockchip@lfdr.de>; Mon,  3 Feb 2020 11:37:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qaRKBNh7eE+PK1EJ35/Yn5AXHnLAlsMKqUPt6Vg+bS0=; b=hzFZ1nIh/pUgpR
	9PxqbQF+Sk3kUOYoHbYh42TJ4wYt+fbdqFQPAEVIAUYVMuVxQeNTWXAhpdxVR9OP9oR3FHqr1qQo+
	3rQsdlmuIFrntI0/+q8pN/DTUBuKJBiGLkttSbMQMt4waS5wdT61ztUS9Tm3OgQAi0zVYACj0FfCd
	mmBIpodDyE20fvPAJaLysZUnaxs/ohpRNXRsxuEHdkRBBIJTZY9nWLrjFZwOjwHxi8NlMEmWZx6Bb
	zAygetGWWmAa4SSDKh5owxOGMYHgCl+75jmsBz6RIzoqEblRE+l+lZX7bvuhR10Vf9e1oEtzwbSBb
	8xYtH19deDbBURW39bwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyZ68-0000Wa-Lb; Mon, 03 Feb 2020 10:36:56 +0000
Received: from mail-wm1-f65.google.com ([209.85.128.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyZ5u-00006a-7L; Mon, 03 Feb 2020 10:36:43 +0000
Received: by mail-wm1-f65.google.com with SMTP id f129so16310914wmf.2;
 Mon, 03 Feb 2020 02:36:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=mi8JQt8vSBVzm/nVSeG5kfzc6+/5194gMc5EPhZXRwM=;
 b=dxsko4BTSPwew4YzjV2lmw2GMrp0KaFAv5OMelKkR6lAzEas2CRyKh+YhYhlTj7EX2
 5BSa2vLTasaUo7g5EX+BtPpLn7OfJyvcSxJ42uY7xcJfk3W7DgSdd0fbB5Mj5zSfpnoW
 LU6jwoyvYodVMEsAdRKg42QM8Y48c9eghb2+P9v5BOAVIhvUcIhlwpUGZfK10x7gw5LR
 M1CThaqbPh9zGtRdb9c9jHu0dCchYylFMkhQDuhMIJBACb2gm4IaPSGIlUFnEp7hCSq8
 x99lgGuhkDp4iuXYHHo+1hAZH3O/P05LoCWl39duYLYaIbaWJIsVcvPa59QWHbIN61Bo
 v1WA==
X-Gm-Message-State: APjAAAW3krTaaZv75G/kfbSyaJ2OtuT14q/zuEhHSE4HK/QL07E6ev6z
 YdDqEhabsS7n2ROjqy6AqQ==
X-Google-Smtp-Source: APXvYqw+09mw5xksG28pR2qfO//37YaXI2ChF/h++bNvnZkow//odOZDUP0tAml34WV+7KIKcqxg7Q==
X-Received: by 2002:a7b:ce10:: with SMTP id m16mr27157105wmc.115.1580726200574; 
 Mon, 03 Feb 2020 02:36:40 -0800 (PST)
Received: from rob-hp-laptop ([212.187.182.163])
 by smtp.gmail.com with ESMTPSA id b16sm25866364wrj.23.2020.02.03.02.36.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 03 Feb 2020 02:36:39 -0800 (PST)
Received: (nullmailer pid 7250 invoked by uid 1000);
 Mon, 03 Feb 2020 10:36:38 -0000
Date: Mon, 3 Feb 2020 10:36:38 +0000
From: Rob Herring <robh@kernel.org>
To: Justin Swartz <justin.swartz@risingedge.co.za>
Subject: Re: [PATCH v3 0/2] Add rga to rk322x device tree
Message-ID: <20200203103638.GA32044@bogus>
References: <20200120194158.25357-1-justin.swartz@risingedge.co.za>
 <20200121220242.22815-1-justin.swartz@risingedge.co.za>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200121220242.22815-1-justin.swartz@risingedge.co.za>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_023642_264261_B42FCBC3 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.65 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.65 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, Jan 21, 2020 at 10:02:39PM +0000, Justin Swartz wrote:
> This patchset aims to enable use of Rockchip's RGA, a 2D raster
> graphic acceleration unit, on rk322x based devices.
> 
> Changed in v3:
>   - Relocate rga node to the correct position in rk322x.dtsi, as
>     indicated by Johan Jonker.
> 
> Changes in v2:
>   - Remove unnecessary "rockchip,rk3228-rga" device tree compatibility
>     string patch, as advised by Ezequiel Garcia.

Why's that? You're using the string still, it needs to be documented.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
