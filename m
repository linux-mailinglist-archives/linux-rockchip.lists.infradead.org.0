Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ACEBD578E
	for <lists+linux-rockchip@lfdr.de>; Sun, 13 Oct 2019 21:09:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xOHrZLiVGWzSSLBAIPHh77Bxm/OuTpC29dPc2ut+A5Y=; b=uLhV6ZQN1KYfYI
	bn/TRWUgJ91f/6EYEeF74Ie1Arghc65BrVgrkCVN6X8hqjCx6TYPfF0tpyKncSoZXy/dUnwLxZzss
	wqz2cV3VxhIDGPA5rRxYW2PnbHiRcehH41Kzuog7IoSB4+9gfmCF0n6KEICAdgGpNLu4rWYkls5R1
	0xLpgZpAPH1y0THgB5F1aHnNJqQV9/F0W/LftOoTOusTMTeAZkZr2pa6alsG5xbqlumWpA6DEXAfN
	ugQzRKhc3VTYCrb3D38GJz3/qSV2B0Z9DIrzGrj9HyFavkQI+EY2r6a1EB5Mj2PoujAt+trbuclVx
	XJgWVYk5yjf6D/9C7V5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJjEu-0003Ic-BL; Sun, 13 Oct 2019 19:09:12 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJjEq-0003Gp-D5
 for linux-rockchip@lists.infradead.org; Sun, 13 Oct 2019 19:09:10 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Oct 2019 12:09:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,293,1566889200"; d="scan'208";a="396281304"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 13 Oct 2019 12:09:01 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1iJjEj-000BTC-3u; Mon, 14 Oct 2019 03:09:01 +0800
Date: Mon, 14 Oct 2019 03:08:22 +0800
From: kbuild test robot <lkp@intel.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [RESEND PATCH v2 3/4] media: rockchip: Add the rkvdec driver
Message-ID: <201910140242.ys3UylA0%lkp@intel.com>
References: <20191011093342.3471-4-boris.brezillon@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191011093342.3471-4-boris.brezillon@collabora.com>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_120908_454911_3BA60C82 
X-CRM114-Status: GOOD (  14.54  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 kernel@collabora.com, kbuild-all@lists.01.org,
 Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
 Tomasz Figa <tfiga@chromium.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Sakari Ailus <sakari.ailus@iki.fi>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Nicolas Dufresne <nicolas@ndufresne.ca>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Boris,

I love your patch! Perhaps something to improve:

[auto build test WARNING on linuxtv-media/master]
[cannot apply to v5.4-rc2 next-20191011]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Boris-Brezillon/media-rockchip-Add-the-rkvdec-driver/20191013-235029
base:   git://linuxtv.org/media_tree.git master
reproduce:
        # apt-get install sparse
        # sparse version: v0.6.1-rc1-43-g0ccb3b4-dirty
        make ARCH=x86_64 allmodconfig
        make C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__'

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>


sparse warnings: (new ones prefixed by >>)

>> drivers/staging/media/rockchip/vdec/rkvdec.c:498:22: sparse: sparse: symbol 'rkvdec_queue_ops' was not declared. Should it be static?
--
>> drivers/staging/media/rockchip/vdec/rkvdec-h264.c:698:19: sparse: sparse: symbol 'get_ref_buf' was not declared. Should it be static?
>> drivers/staging/media/rockchip/vdec/rkvdec.h:112:36: sparse: sparse: shift too big (32) for type int
>> drivers/staging/media/rockchip/vdec/rkvdec.h:115:21: sparse: sparse: shift too big (32) for type unsigned int
   drivers/staging/media/rockchip/vdec/rkvdec.h:116:39: sparse: sparse: shift too big (4294967268) for type int
   drivers/staging/media/rockchip/vdec/rkvdec.h:116:39: sparse: sparse: shift too big (4294967276) for type int
   drivers/staging/media/rockchip/vdec/rkvdec.h:116:39: sparse: sparse: shift too big (4294967277) for type int
   drivers/staging/media/rockchip/vdec/rkvdec.h:116:39: sparse: sparse: shift too big (4294967279) for type int
   drivers/staging/media/rockchip/vdec/rkvdec.h:116:39: sparse: sparse: shift too big (4294967282) for type int
   drivers/staging/media/rockchip/vdec/rkvdec.h:116:39: sparse: sparse: shift too big (4294967285) for type int
   drivers/staging/media/rockchip/vdec/rkvdec.h:116:39: sparse: sparse: shift too big (4294967286) for type int
   drivers/staging/media/rockchip/vdec/rkvdec.h:116:39: sparse: sparse: shift too big (4294967290) for type int
   drivers/staging/media/rockchip/vdec/rkvdec.h:116:39: sparse: sparse: shift too big (4294967295) for type int
   drivers/staging/media/rockchip/vdec/rkvdec.h:116:39: sparse: sparse: shift too big (4294967269) for type int
   drivers/staging/media/rockchip/vdec/rkvdec.h:116:39: sparse: sparse: shift too big (4294967270) for type int
   drivers/staging/media/rockchip/vdec/rkvdec.h:116:39: sparse: sparse: shift too big (4294967279) for type int
   drivers/staging/media/rockchip/vdec/rkvdec.h:116:39: sparse: sparse: shift too big (4294967288) for type int
   drivers/staging/media/rockchip/vdec/rkvdec.h:116:39: sparse: sparse: shift too big (4294967289) for type int
   drivers/staging/media/rockchip/vdec/rkvdec.h:116:39: sparse: sparse: shift too big (4294967290) for type int
   drivers/staging/media/rockchip/vdec/rkvdec.h:116:39: sparse: sparse: shift too big (4294967291) for type int
>> drivers/staging/media/rockchip/vdec/rkvdec.h:112:36: sparse: sparse: shift too big (32) for type int
>> drivers/staging/media/rockchip/vdec/rkvdec.h:115:21: sparse: sparse: shift too big (32) for type unsigned int
   drivers/staging/media/rockchip/vdec/rkvdec.h:116:39: sparse: sparse: shift too big (4294967272) for type int
   drivers/staging/media/rockchip/vdec/rkvdec.h:116:39: sparse: sparse: shift too big (4294967277) for type int
   drivers/staging/media/rockchip/vdec/rkvdec.h:116:39: sparse: sparse: shift too big (4294967278) for type int
   drivers/staging/media/rockchip/vdec/rkvdec.h:116:39: sparse: sparse: shift too big (4294967279) for type int
   drivers/staging/media/rockchip/vdec/rkvdec.h:116:39: sparse: sparse: shift too big (4294967284) for type int
   drivers/staging/media/rockchip/vdec/rkvdec.h:116:39: sparse: sparse: shift too big (4294967289) for type int
   drivers/staging/media/rockchip/vdec/rkvdec.h:116:39: sparse: sparse: shift too big (4294967290) for type int
   drivers/staging/media/rockchip/vdec/rkvdec.h:116:39: sparse: sparse: shift too big (4294967292) for type int
   drivers/staging/media/rockchip/vdec/rkvdec.h:116:39: sparse: sparse: shift too big (4294967273) for type int
   drivers/staging/media/rockchip/vdec/rkvdec.h:116:39: sparse: sparse: shift too big (4294967278) for type int
   drivers/staging/media/rockchip/vdec/rkvdec.h:116:39: sparse: sparse: shift too big (4294967279) for type int
   drivers/staging/media/rockchip/vdec/rkvdec.h:116:39: sparse: sparse: shift too big (4294967280) for type int
   drivers/staging/media/rockchip/vdec/rkvdec.h:116:39: sparse: sparse: shift too big (4294967281) for type int
   drivers/staging/media/rockchip/vdec/rkvdec.h:116:39: sparse: sparse: shift too big (4294967282) for type int
   drivers/staging/media/rockchip/vdec/rkvdec.h:116:39: sparse: sparse: shift too big (4294967287) for type int
   drivers/staging/media/rockchip/vdec/rkvdec.h:116:39: sparse: sparse: shift too big (4294967288) for type int
   drivers/staging/media/rockchip/vdec/rkvdec.h:119:36: sparse: sparse: shift too big (32) for type int

Please review and possibly fold the followup patch.

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
