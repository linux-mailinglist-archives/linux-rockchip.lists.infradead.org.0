Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CAF533B8E
	for <lists+linux-rockchip@lfdr.de>; Tue,  4 Jun 2019 00:44:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pI17ETVeXjUQnd5GTlLtP5wmyFaxDfuuODuxkcvNHMY=; b=tnpLRoSfUEx5ZZ
	kUGnaXwoMU3oz+wBD6pzegu8hbRZWmUf9EDlr0LL8NU6/IJFSgbpqgB6kpOTMBU7UtocVevSAIzV4
	mK21cbO1XpJP7JsAqivuO80JJU/KcBYdSsOktSD3yGkHdymKM2FfZ+ojqE04J1fo0CkDFOJMV41Jo
	IQmbw3GtEiy4T+qCvEaICzUQHMEcBXyfCI3QRf/i8dkgpY2Gea6U1Q+pMvxDwv6/+xKjg+11VhO7f
	u/Dc8YlyW39d+hlIKUeuJJmYc8Peiy/s2jqjNfXaNkWlitfO9mZHxv16tgDteu9U9ffKObJprsJSo
	rG7LzwnmDsr/ayzO0JtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXvgr-0001dr-U9; Mon, 03 Jun 2019 22:44:29 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXvgi-0001Td-D5
 for linux-rockchip@lists.infradead.org; Mon, 03 Jun 2019 22:44:21 +0000
Received: by mail-pl1-x644.google.com with SMTP id s24so7380488plr.8
 for <linux-rockchip@lists.infradead.org>; Mon, 03 Jun 2019 15:44:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=i1NrrxtRQzUfMSgO3hbvNTalzhN+3gxpJj1nFq+byy8=;
 b=Epu3x+qUCsvLnQYtceW20enzegJsKK3kHgm4J1DEMqAmOFJtjdVYgQNRjDWwcmgBoe
 Ag6YPBpG+Mhg1KNgS3g8ttaJm3pEvTbqIgszuY7XnM1WwRATYvXirkBOzaLp3XPviLz1
 4HuQuuk4n9FoxU3dmMrm6UvGTq6rWTxeLltyY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=i1NrrxtRQzUfMSgO3hbvNTalzhN+3gxpJj1nFq+byy8=;
 b=WIgql2nYb0ekQh69oOrWa6sOnUKLLJ4FbIVNTaUSKNNToZ9cLulwhrWPfsqkh81ooz
 t405c9E66tyvakJl+cqFYGFaph7YhOHjGxTsfu/aZYmA+7jLJnF3Aw2OovBbXdcz4Sy+
 hnxY40Z8z+68esPS4M72br17/Z6kpO6yq5bDc1aNstBoNK3eOXD24kWnn6FYU6Ovom+C
 lme/WUdL0L9OycltE+Nki0CqvR5vZ+Ab1aEkpeqE/PAFtz7yO3ANrvECXiFpluURHQjP
 YQcTBNUIBCELc8iETQBVxn4Xcag5ppRk96MuWHm2cRu0aIvKdHs8bEb7wblrH1InqGW/
 rAKg==
X-Gm-Message-State: APjAAAVNtl/iwVsmdhEbpxPUbEsoPOujkfI5inPglZA9DhSU25oiLurj
 I+SMGQSIxZV5CaxZf/tIruFr1A==
X-Google-Smtp-Source: APXvYqzlBKFdd0t7IQz0yNeea1dEgjJHaS/dE8d8qTD0lMaX5q7l9JDvouMoOEUSk+7Pb/8WQjrToQ==
X-Received: by 2002:a17:902:2862:: with SMTP id
 e89mr33265524plb.258.1559601858570; 
 Mon, 03 Jun 2019 15:44:18 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id l1sm14398404pgi.91.2019.06.03.15.44.17
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 03 Jun 2019 15:44:17 -0700 (PDT)
Date: Mon, 3 Jun 2019 15:44:17 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH] usb: dwc2: host: Fix wMaxPacketSize handling (fix webcam
 regression)
Message-ID: <20190603224417.GN40515@google.com>
References: <20190531200412.129429-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190531200412.129429-1-dianders@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_154420_465166_D6CC1912 
X-CRM114-Status: GOOD (  14.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>, Martin Schiller <ms@dev.tdt.de>,
 Felipe Balbi <felipe.balbi@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org, tfiga@chromium.org,
 linux-rockchip@lists.infradead.org, Minas Harutyunyan <hminas@synopsys.com>,
 groeck@chromium.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, May 31, 2019 at 01:04:12PM -0700, Douglas Anderson wrote:
> In commit abb621844f6a ("usb: ch9: make usb_endpoint_maxp() return
> only packet size") the API to usb_endpoint_maxp() changed.  It used to
> just return wMaxPacketSize but after that commit it returned
> wMaxPacketSize with the high bits (the multiplier) masked off.  If you
> wanted to get the multiplier it was now up to your code to call the
> new usb_endpoint_maxp_mult() which was introduced in
> commit 541b6fe63023 ("usb: add helper to extract bits 12:11 of
> wMaxPacketSize").
> 
> Prior to the API change most host drivers were updated, but no update
> was made to dwc2.  Presumably it was assumed that dwc2 was too
> simplistic to use the multiplier and thus just didn't support a
> certain class of USB devices.  However, it turns out that dwc2 did use
> the multiplier and many devices using it were working quite nicely.
> That means that many USB devices have been broken since the API
> change.  One such device is a Logitech HD Pro Webcam C920.
> 
> Specifically, though dwc2 didn't directly call usb_endpoint_maxp(), it
> did call usb_maxpacket() which in turn called usb_endpoint_maxp().
> 
> Let's update dwc2 to work properly with the new API.
> 
> Fixes: abb621844f6a ("usb: ch9: make usb_endpoint_maxp() return only packet size")
> Cc: stable@vger.kernel.org
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

I'm not really familiar with the dwc2 driver, but this looks
reasonable to me. FWIW:

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
