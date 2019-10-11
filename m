Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07BC6D411C
	for <lists+linux-rockchip@lfdr.de>; Fri, 11 Oct 2019 15:27:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jTfI2TWow/6Km4urUotAJeQvxP6cd5a5O5aEJf5pamU=; b=ujpbJqMxf+6MaY
	0panx0wqxfBZBLKJRPpxHcVrB+Mk5HAic7E+1wZPtlfYCaIbIUjKE0lgd0cM7uLr25JI/IG2F7mYc
	xDkpOiTbF6QJHYRhF/+CRQV7Em4bDDj/OODv7iSe7WnwJ5iUl/3m7bLMr18Q+vOyzuS8ylPtQwEOZ
	CCfBS4gRLnSFNHLYcgZK+W4zHkZ0IYu5fg5dyVSzHX1O8C07SMxJEpiBKaqhM8R23zc0K8dYeyO2v
	yf32opx8P/XYCOqaRka938HMOyDsM6jQZVowNbXYQ5TjTz6TOsow6hknjAzGNmF0jkvYneeBwMjOw
	ajAIpQuz94WbUGtuklyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIuwz-0002ss-7J; Fri, 11 Oct 2019 13:27:21 +0000
Received: from mail-yw1-xc42.google.com ([2607:f8b0:4864:20::c42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIuww-0002sC-31
 for linux-rockchip@lists.infradead.org; Fri, 11 Oct 2019 13:27:19 +0000
Received: by mail-yw1-xc42.google.com with SMTP id r134so3476289ywg.2
 for <linux-rockchip@lists.infradead.org>; Fri, 11 Oct 2019 06:27:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=gfuUfZlYZ9oJJ+/N0uMt9DhhQR0v6tIoqlaSGbKIW5Q=;
 b=RvgE9Ld3dkdeSZz8gPaqgtDS2qowzHQRexrjX4HVG+BcCfNR2BlabHALJqmY1Saxnc
 HE2pECbmda8Himuhffd/NA1tqR0k4XjDsOlSEKRUkwfRYV1jcg7dLhBqCsZqE0VOeJHb
 4iIJnwiS1A5mL54Igw1bUOiiglA20xIEKTF68jZ4BeiNpX1oNbVmvxoOP0RbsGVKTG02
 Lh9C9oacHynhu1RsLZBgMVUjBOkjjKbHUIcaU7LLVVidv9O9wVRz7TkwqJoORkrmduRr
 y7Np5zdZwOrk2IJfM9fIh0bw44es8W306LoVI3o+kn092f+LLQLQgK8g3eZYeG3U2Apj
 Qoow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=gfuUfZlYZ9oJJ+/N0uMt9DhhQR0v6tIoqlaSGbKIW5Q=;
 b=pfLAD2IfLIO6jOXDbSOWGvZKEXAYnKtjDxFEXEmUP03/q1YQ+Nmb8tJ4ngMX99ltNj
 sBUzM3Nx2yBKpf5D6VFO0OQqrJxS4Zxs3XVDGulLd6MsvZte43mc8+mjhQ6+jVASRqGk
 NvDrdrK4fenPoS0sTauiY8pFhBHKeSPInHsXkv0RCT0hcRdoOd7hT4AZHpOLIQTIGl/M
 +4vG+bqd9ttH9EOZZYaVQVGb9TBm2+QNUOvlz/7oXvzu67KkBf6sEkt1ZJBS60TvJISl
 AAvr1mrrfbX177q6qKrkhfl2g8JOCihSZFMQ6wzSvMDCN2mbSLI3RK/DsHrDh5WoGIkM
 jJ2w==
X-Gm-Message-State: APjAAAX1Bmdi9nE1U30S+G548D+mrt7dMl1RVfVYgt9YloifpmMIy4HR
 TW7dClBOMpZLWvZF8rfr96/fBQ==
X-Google-Smtp-Source: APXvYqxDF1UT0llbpAUs7tUd+8/Bo22/yMWIlZSCpGQIlSr+dT1MkqQR6ab3Q5CqDbLhAZxbBpAWoQ==
X-Received: by 2002:a81:a303:: with SMTP id a3mr2217302ywh.244.1570800436812; 
 Fri, 11 Oct 2019 06:27:16 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id r193sm2177467ywg.38.2019.10.11.06.27.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Oct 2019 06:27:16 -0700 (PDT)
Date: Fri, 11 Oct 2019 09:27:15 -0400
From: Sean Paul <sean@poorly.run>
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH v5 0/3] RK3288 Gamma LUT
Message-ID: <20191011132715.GO85762@art_vandelay>
References: <20191010194351.17940-1-ezequiel@collabora.com>
 <2314316.IrHOdPmtjk@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2314316.IrHOdPmtjk@diego>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_062718_272228_3A6F0818 
X-CRM114-Status: GOOD (  10.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jacopo Mondi <jacopo@jmondi.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Douglas Anderson <dianders@chromium.org>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Sean Paul <seanpaul@chromium.org>,
 Boris Brezillon <boris.brezillon@collabora.com>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, Oct 11, 2019 at 03:22:00PM +0200, Heiko St=FCbner wrote:
> Am Donnerstag, 10. Oktober 2019, 21:43:48 CEST schrieb Ezequiel Garcia:
> > New iteration, seems that we are finally converging.
> > =

> > For this v5, we are only doing some changes on
> > the gamma_set implementation. As a result, the code
> > is more readable. See the changelog in patch 2 for more
> > information.
> > =

> > Thanks!
> =

> on rk3288 (and rk3399+rk3328 to make sure nothing breaks)
> Tested-by: Heiko Stuebner <heiko@sntech.de>
> =


Applied the first 2 patches to drm-misc-next for 5.5. I'll leave 3/3 for He=
iko
and the rockchip tree.

Thanks to all for the reviews and testing, thanks to Ezequiel for sticking =
with
this to completion!

Sean

> =

> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

-- =

Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
