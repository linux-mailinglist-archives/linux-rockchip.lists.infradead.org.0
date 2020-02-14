Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3BE815D4F4
	for <lists+linux-rockchip@lfdr.de>; Fri, 14 Feb 2020 10:47:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X2NttrpsJmNF743acHFXeyoaxi3PEVClWogymJl+bSI=; b=fG29h3qxO1XLaU
	KRmsyY5Ik7pZJ4Ust1QpK0yjI3Os4XuDnfFvOUZoBukzOUrDuJtXT/jxqG9ciVyw1G/aftBz8/UGc
	beJz0hp5E2BNCgjt+BI+KaaJpkdhdWQc/pH3ZbKbJWh9jr/32gAGRlojSzMdvXEMw3MGQ7uAnnrkO
	m+e508vZVNLrnR4n2cMk7sntTqxo4WTPIfpYYSjd/CQ8qcVETzdN96VkTnG8ujQVcutd9ST+U4SvC
	KswiA4L24Z7TpPJuCj0JQyRCIte9zZXTNK4j30nMNlD3QGGMmoVf8EQDqEKpEBICU2JF6hWXLY1X5
	U4qA/WGYAY39vhNRY5vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2XZ5-0006W8-Q0; Fri, 14 Feb 2020 09:47:15 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2XZ2-0006Vn-Nc
 for linux-rockchip@lists.infradead.org; Fri, 14 Feb 2020 09:47:13 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Feb 2020 01:47:11 -0800
X-IronPort-AV: E=Sophos;i="5.70,440,1574150400"; d="scan'208";a="227544236"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Feb 2020 01:47:08 -0800
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id A5AE12088D; Fri, 14 Feb 2020 11:47:06 +0200 (EET)
Date: Fri, 14 Feb 2020 11:47:06 +0200
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH] media: staging: rkisp1: don't lock media's graph_mutex
 when calling rkisp1_create_links
Message-ID: <20200214094706.GH22481@paasikivi.fi.intel.com>
References: <20200204214446.20381-1-dafna.hirschfeld@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200204214446.20381-1-dafna.hirschfeld@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_014712_819480_8BA681AE 
X-CRM114-Status: UNSURE (   8.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mchehab@kernel.org, dafna3@gmail.com, hverkuil@xs4all.nl,
 linux-rockchip@lists.infradead.org, helen.koike@collabora.com,
 kernel@collabora.com, ezequiel@collabora.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, Feb 04, 2020 at 10:44:44PM +0100, Dafna Hirschfeld wrote:
> The function rkisp1_create_links calls media_entity_get_fwnode_pad
> and media_create_pad_link in the mc api. Those calls don't require
> locking the graph_mutex so remove the locking.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

For the three patches:

Acked-by: Sakari Ailus <sakari.ailus@linux.intel.com>

-- 
Sakari Ailus

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
