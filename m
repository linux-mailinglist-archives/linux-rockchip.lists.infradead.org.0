Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AD8AFDCB9
	for <lists+linux-rockchip@lfdr.de>; Fri, 15 Nov 2019 12:53:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T4HiM8EvMcb5qBscV9qht5qbA1l/q+cXGRNPDZ25r44=; b=Ji0RJzxGao8WNZ
	t3sAhIq2EPLqorQN5YqjksF9E6p0mmTd3Am50jxDRdVlmPwGN1v8ktRBB0GMgP2EVtgo0qN9/reB+
	ijBm9rCuEsrzi2LhjtOCag9s6LxQjuRiF7BHBp7O7uZ3eHxPDdF6V7W8DdT58No2kyQlCVPukBjju
	Fag3iti2cZVdTRwDCfhV6uvO9G1RblH6l0aboRq5jdaU66ef1T5r5bjdThX1tmamHRdEy9xC5ofCl
	POU1oqmZswvA0NR/VtW/Y3/eOrxHTH6UwENz8zRx3fgzf2b3O9ZejR8Ik8ZHSeGp5/DQK3Syv2Tf3
	b+dLMckhbEMdXxVYq/eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVaA3-0004UQ-2F; Fri, 15 Nov 2019 11:53:11 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVa9t-0004MJ-Vp; Fri, 15 Nov 2019 11:53:03 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Nov 2019 03:53:00 -0800
X-IronPort-AV: E=Sophos;i="5.68,308,1569308400"; d="scan'208";a="199178566"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Nov 2019 03:52:56 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Wambui Karuga <wambui.karugax@gmail.com>, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, sean@poorly.run, airlied@linux.ie, daniel@ffwll.ch,
 hjc@rock-chips.com
Subject: Re: [PATCH 0/2] add new DRM_DEV_WARN macro
In-Reply-To: <20191114132436.7232-1-wambui.karugax@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191114132436.7232-1-wambui.karugax@gmail.com>
Date: Fri, 15 Nov 2019 13:52:53 +0200
Message-ID: <8736ep1hm2.fsf@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_035302_038149_A99208B2 
X-CRM114-Status: UNSURE (   8.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
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
Cc: linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, 14 Nov 2019, Wambui Karuga <wambui.karugax@gmail.com> wrote:
> This adds a new DRM_DEV_WARN helper macro for warnings log output that include
> device pointers. It also includes the use of the DRM_DEV_WARN macro in
> drm/rockchip to replace dev_warn.

I'm trying to solicit new struct drm_device based logging macros, and
starting to convert to those. [1]

BR,
Jani.


[1] http://patchwork.freedesktop.org/patch/msgid/63d1e72b99e9c13ee5b1b362a653ff9c21e19124.1572258936.git.jani.nikula@intel.com




>
> Wambui Karuga (2):
>   drm/print: add DRM_DEV_WARN macro
>   drm/rockchip: use DRM_DEV_WARN macro in debug output
>
>  drivers/gpu/drm/rockchip/inno_hdmi.c | 3 ++-
>  include/drm/drm_print.h              | 9 +++++++++
>  2 files changed, 11 insertions(+), 1 deletion(-)

-- 
Jani Nikula, Intel Open Source Graphics Center

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
