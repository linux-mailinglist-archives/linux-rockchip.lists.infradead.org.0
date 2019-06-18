Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 407AB4A9FC
	for <lists+linux-rockchip@lfdr.de>; Tue, 18 Jun 2019 20:35:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZUn184k0THPFP/IP59p9f5cp07/oq359JD7T3FNMnek=; b=VNM3T/T0oeJmOE
	sne3fJNutD4cCjTg2cp40Bd1YrJDEIhck1dXKon/8Vu1a/XTN2kvfN//cXQOJijLhD2lnKPviMYjz
	0Wercz8Uz4Ttgk7oCYoE9CcbdZe1Pd7gQ5Fh+IXzalUHkWVn7FoIGi8BsTpTO5zy9Idm2s7gomL/m
	dYJIwTqMucTP7TD5A9S1kvTlnFRXLo7x9QXVyk1DURd/MLTr8cuJkVol7YeK1OGHhQcALBydTWcVr
	aIXJICH+re6PJO5tq3EtV+b6M9idjTR0JQcUDNIFt22XTV0ubuFYtVESFvjH7sq91ofJMDDhVs4gG
	wNIT3JnBmzr092fwYjpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdIwh-0007wW-KU; Tue, 18 Jun 2019 18:35:03 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdIwd-0007jd-QZ
 for linux-rockchip@lists.infradead.org; Tue, 18 Jun 2019 18:35:01 +0000
Received: by mail-pf1-x444.google.com with SMTP id r7so8154226pfl.3
 for <linux-rockchip@lists.infradead.org>; Tue, 18 Jun 2019 11:34:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=6kNZlMyc+BT+bVh0V15w4cgbur+weciC7/ZsAv2IV7U=;
 b=bm7i7c5f2/GAPKW27PQz1CiDRmYmVVba0JO3/GX7R8G+fkjmqzIIjlSd4nI38HMNiO
 JG+isnGj0iq6Ofd/6L/6Az0kLFKN3KBe+DUwfNJZrmXGBX8SDqz9yFi5xBVYZhRXZvx8
 pJQsKXZRSuhhm6WH3KSC1QPvrSbAjRWmtJKOA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=6kNZlMyc+BT+bVh0V15w4cgbur+weciC7/ZsAv2IV7U=;
 b=PKcNkwXCLh4JEbkLxWbaGmOEhB/fwP1zwJWtItBXG0P7VYt0UOiCNkermegDqmOfnp
 j9Lb262NzAuiMnfOlF3PefQZY3WYqfcC2371va/jY35ydUbYTyezLNDBvJ5mg2SOgz+A
 B5opfNo5pMf4tIyW5UzVwQdcAxJmzPQNH/7UsAfx2MZU/qK1wcb+ct9N3kUOY8fe0FQl
 2d6zFfeT2VoXFkKRuJWyHUhLVLOm2OW3ihT7dFFqTESfPUSmI5B3e0yDwO2oYa7tgaac
 zeYVKh1caGa+M5/2IpmqYiUIu8Oc7/ydKeAyXYnXmoFR9j+4a9311GldivUddqx20NEN
 sahA==
X-Gm-Message-State: APjAAAWbewTNjpa72UL0OpyBdorvcsG61PNDdS+MnaQvYcS+VwjRfe7k
 h/A6g1Bt7sbWtEHkK2RmE4kthA==
X-Google-Smtp-Source: APXvYqy+QvRjs4Drmi2FUQIv8wv4fenqIqrDebMofryze6kGt+JsmRV9NB16VTZPs4PMvqJusTHJsA==
X-Received: by 2002:a65:654f:: with SMTP id a15mr3860571pgw.73.1560882898990; 
 Tue, 18 Jun 2019 11:34:58 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id e16sm22768169pga.11.2019.06.18.11.34.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 18 Jun 2019 11:34:58 -0700 (PDT)
Date: Tue, 18 Jun 2019 11:34:55 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: Re: [PATCH] Revert "ARM: dts: rockchip: set PWM delay backlight
 settings for Minnie"
Message-ID: <20190618183455.GU137143@google.com>
References: <20190614224533.169881-1-mka@chromium.org>
 <45f94c6a-5bd7-92b0-d23f-ae7e0481935f@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <45f94c6a-5bd7-92b0-d23f-ae7e0481935f@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_113459_878775_4A283D44 
X-CRM114-Status: GOOD (  13.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Douglas Anderson <dianders@chromium.org>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Pavel Machek <pavel@ucw.cz>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Enric,

On Tue, Jun 18, 2019 at 10:21:52AM +0200, Enric Balletbo i Serra wrote:
> Hi Matthias,
> 
> On 15/6/19 0:45, Matthias Kaehlcke wrote:
> > This reverts commit 288ceb85b505c19abe1895df068dda5ed20cf482.
> > 
> > According to the commit message the AUO B101EAN01 panel on minnie
> > requires a PWM delay of 200 ms, however this is not what the
> > datasheet says. The datasheet mentions a *max* delay of 200 ms
> > for T2 ("delay from LCDVDD to black video generation") and T3
> > ("delay from LCDVDD to HPD high"), which aren't related to the
> > PWM. The backlight power sequence does not specify min/max
> > constraints for T15 (time from PWM on to BL enable) or T16
> > (time from BL disable to PWM off).
> > 
> 
> Could you point from where the confusion comes from? I think will be helpful for
> the record. B101EAN01.8 vs B101EAN01.1

sounds good

> > Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> 
> With the above added:
> 
> Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>

Thanks!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
