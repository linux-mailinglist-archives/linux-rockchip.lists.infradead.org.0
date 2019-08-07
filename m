Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE5A98500D
	for <lists+linux-rockchip@lfdr.de>; Wed,  7 Aug 2019 17:37:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NUw4G+M+yaHSEKad2+IZGMqeK51zT8zZsY62d56+7GA=; b=qNZUfe0MXixTBD
	VCBFQcNDkW22f1e4YqQG25sCJeHJ323mE++b8JBPjdMtSgU9X0QYrivd69AON/660qdHZufT9OEeX
	JKQOMBqnsLZpwXnUKbE+teusgbqmWZNP5rltFdwzhsmsIfcsimeq40WlPLcXN3HYFhalEFsJYiber
	o6ZhZti+OhhFAPAqy3JNNvZdlhL9YHDYoEcOU81hJtZvyMM1Bw8dgb97Ieat2LcqqWMyjQDzKt5Q1
	J1kSzkXY6x5oqnik626MMnjZwY6HOs1jA7Rh5Ef5Lcl9LPf5CiT4zoXq9Z41xz9O3YFCvb6LZEZg3
	/JmsYTKJekQIG5SIvYcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvO0Z-0007LA-Oe; Wed, 07 Aug 2019 15:37:47 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvO0J-00079c-DC; Wed, 07 Aug 2019 15:37:32 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Aug 2019 08:37:29 -0700
X-IronPort-AV: E=Sophos;i="5.64,357,1559545200"; d="scan'208";a="165352702"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Aug 2019 08:37:25 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id C408620355; Wed,  7 Aug 2019 18:37:59 +0300 (EEST)
Date: Wed, 7 Aug 2019 18:37:59 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH v8 00/14] Rockchip ISP1 Driver
Message-ID: <20190807153759.GP21370@paasikivi.fi.intel.com>
References: <20190730184256.30338-1-helen.koike@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190730184256.30338-1-helen.koike@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_083731_485830_4690542C 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, eddie.cai.linux@gmail.com, kernel@collabora.com,
 heiko@sntech.de, jacob2.chen@rock-chips.com, jeffy.chen@rock-chips.com,
 zyc@rock-chips.com, linux-kernel@vger.kernel.org, tfiga@chromium.org,
 linux-rockchip@lists.infradead.org, hans.verkuil@cisco.com,
 laurent.pinchart@ideasonboard.com, zhengsq@rock-chips.com, mchehab@kernel.org,
 ezequiel@collabora.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, Jul 30, 2019 at 03:42:42PM -0300, Helen Koike wrote:
> Hello,
> 
> I'm re-sending a new version of ISP(Camera) v4l2 driver for rockchip
> rk3399 SoC.
> 
> I didn't change much from the last version, just applying the
> suggestions made in the previous one.
> 
> This patchset is also available at:
> https://gitlab.collabora.com/koike/linux/tree/rockchip/isp/v8
> 
> Libcamera patched to work with this version:
> https://gitlab.collabora.com/koike/libcamera
> (also sent to the mailing list)
> 
> I tested on the rockpi 4 with a rpi v1.3 sensor and also with the
> Scarlet Chromebook.

Could you also post media-ctl -p printout e.g. as a reply to the cover
letter?

Thanks.

-- 
Sakari Ailus
sakari.ailus@linux.intel.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
